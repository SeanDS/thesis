# -*- coding: utf-8 -*-
from __future__ import division

import sys
import numpy as np
import matplotlib.pyplot as plt
import lookfeel as lf

# first argument should be save path
save_path = sys.argv[1]

# cavity transfer function
def cavity_transfer_function(lengths, k, r1, r2, t):
  return (r1 - (t ** 2 * r2 * np.exp(-2 * 1j * k * lengths)) / (1 - r1 * r2 * np.exp(-2 * 1j * k * lengths)))

# mirror properties
r1 = 0.99
r2 = 0.99
t = np.sqrt(1 - r1**2)

# wavelength
lambda0 = 1064e-9

# wave number
k = 2 * np.pi / lambda0

# speed of light
c = 3e8

# nominal cavity length, just enough wavelengths to almost reach 10m
nominal_length = lambda0 * 9398496

# lengths vector
lengths = nominal_length + np.linspace(-0.05 * lambda0, 0.05 * lambda0, 1000)

# cavity transfer function
tf = cavity_transfer_function(lengths, k, r1, r2, t)

# figure
fig = plt.figure(figsize=lf.FIG_SIZE_A)

# first axis
ax1 = fig.add_subplot(211)
ax2 = fig.add_subplot(212, sharex=ax1)

# colour wheel
colours = lf.Colours()
colour_a = colours.next()

# magnitude plot
ax1.plot((lengths - nominal_length) * 1e9, np.abs(tf), color=colour_a, alpha=lf.ALPHA_LINE_A)

# phase offset, to avoid wrapping
phase_offset = 0

# phase plot
ax2.plot((lengths - nominal_length) * 1e9, phase_offset + np.angle(tf) * 180 / np.pi, color=colour_a, alpha=lf.ALPHA_LINE_A)

ax1.set_ylabel('Magnitude')
ax2.set_xlabel('Offset from resonance (nm)')
ax2.set_ylabel(u'Phase (deg)')

ax1.grid(True)
ax2.grid(True)

ax1.set_xlim([-0.05 * lambda0 * 1e9, 0.05 * lambda0 * 1e9])

# set y-labels for phase
ax2.set_yticks([-90, -45, 0, 45, 90])

fig.tight_layout()

plt.savefig(save_path)