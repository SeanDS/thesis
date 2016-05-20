from __future__ import division

import sys
import numpy as np
import matplotlib.pyplot as plt
import lookfeel as lf

# first argument should be save path
save_path = sys.argv[1]

# cavity power function
def cavity_power_vs_length(lengths, k, r1, r2, t):
  return t**2 / (1 - 2*r1*r2*np.cos(2*k*lengths) + r1**2 * r2**2)

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

# powers
powers = cavity_power_vs_length(lengths, k, r1, r2, t)

# figure
fig = plt.figure(figsize=lf.FIG_SIZE_A)

# first axis
ax1 = plt.gca()

# copy first axis, for second unit
ax2 = ax1.twiny()

# colour wheel
colours = lf.Colours()

# plot
ax1.semilogy((lengths - exact_cavity_length) / lambda0, powers, color=colours.next())

ax1.set_xlabel(r'Length offset [$\lambda$]')
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

plt.savefig(save_path)