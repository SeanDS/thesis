# -*- coding: utf-8 -*-
from __future__ import division

import sys
import numpy as np
import matplotlib.pyplot as plt
import lookfeel as lf

# first argument should be save path
save_path = sys.argv[1]

# cavity amplitude function
def cavity_amplitude_vs_length(lengths, k, r1, r2, t):
  return (1j * t) / (1 - r1 * r2 * np.exp(2j * k * lengths))
  
  #return t**2 / (1 - 2*r1*r2*np.cos(2*k*lengths) + r1**2 * r2**2)

# mirror properties
r1 = 0.99
r2 = 1
t = np.sqrt(1 - r1**2)

# wavelength
lambda0 = 1064e-9

# wave number
k = 2 * np.pi / lambda0

# speed of light
c = 3e8

# approximate cavity length
cavity_length = 10

# cavity length, exact integer number of wavelengths
exact_cavity_length = cavity_length - (cavity_length % lambda0)

# lengths vector
lengths = exact_cavity_length + np.linspace(-0.75 * lambda0, 0.75 * lambda0, 1000)

# cavity amplitudes
amplitudes = cavity_amplitude_vs_length(lengths, k, r1, r2, t)
powers = amplitudes * np.conj(amplitudes)

# figure
fig = plt.figure(figsize=lf.FIG_SIZE_A)

# first axis
ax1 = fig.add_subplot(211)

# copy first axis, for second unit
ax2 = ax1.twiny()

# second plot
ax3 = fig.add_subplot(212, sharex=ax1)

# colour wheel
colours = lf.Colours()
colour_a = colours.next()

# plot lengths
plot_lengths = (lengths - exact_cavity_length) / lambda0

# power plot
ax1.semilogy(plot_lengths, powers, color=colour_a)

ax1.set_ylabel('Cavity power / input power')

ax1.grid(True)

ax1.set_xlim([-0.75, 0.75])
ax1.set_ylim([1e-3, 1e3])

# set second axis scale
lower_limit, upper_limit = ax1.get_xlim()

# scale factor
length_offset_to_megahertz = 1e-6 * c / exact_cavity_length

# set top x-axis tick labels, BEFORE xlimit (otherwise it screws up)
ax2.set_xticks([tick * length_offset_to_megahertz for tick in ax1.get_xticks()])

# set x-axis limit
ax2.set_xlim([lower_limit * length_offset_to_megahertz, upper_limit * length_offset_to_megahertz])

ax2.set_xlabel('Frequency offset for {0:.0f} m cavity [MHz]'.format(cavity_length))

# phase offset, to bring it to cross at zero on the peak
phase_offset = -90

# phase plot
ax3.plot(plot_lengths, phase_offset + np.angle(amplitudes) * 180 / np.pi, color=colour_a)
ax3.set_xlabel(r'Length offset [$\lambda$]')
ax3.set_ylabel(u'Phase [°]')

ax3.set_yticks([-90, -45, 0, 45, 90])

ax3.grid(True)

fig.tight_layout()

plt.savefig(save_path)