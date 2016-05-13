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

# lengths vector
lengths = np.linspace(-0.75 * lambda0, 0.75 * lambda0, 1000)

# powers
powers = cavity_power_vs_length(lengths, k, r1, r2, t)

# figure and axis
fig = plt.figure(figsize=lf.FIG_SIZE_A)
ax = plt.gca()

# colour wheel
colours = lf.Colours()

# plot
ax.semilogy(lengths / lambda0, powers, color=colours.next())

ax.set_xlabel(r'Length offset [$\lambda$]')
ax.set_ylabel('Cavity power / input power')

ax.grid(True)

ax.set_xlim([-0.75, 0.75])
ax.set_ylim([1e-3, 1e3])

plt.savefig(save_path)