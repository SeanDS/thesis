# -*- coding: utf-8 -*-
from __future__ import division

import sys
import os
import numpy as np
import matplotlib.pyplot as plt
import lookfeel as lf

# first argument should be save path
save_path = sys.argv[1]

# function to calculate area under a TF's curve
def area(tf, dx):
    return np.trapz(tf, dx=dx)

f = np.logspace(-5, 5, 1000)
dx = 0.1

# produce transfer functions, scale factors eyeballed
s1 = 2 * np.pi * f * 0.167
s2 = 2 * np.pi * f * 0.0016

tf1 = 1000 / np.sqrt(1 + s1 ** 2)
tf2 = 100 / np.sqrt(1 + s2 ** 2)

# calculate area under tfs' curves
#area_1 = area(tf1[np.where(f > 1)], dx)
#area_2 = area(tf2[np.where(f > 1)], dx)

#print area_1, area_2

# frequencies to fill
fill_indices_1 = np.where(tf1 >= 1)
fill_indices_2 = np.where(tf2 >= 1)

fig = plt.figure(figsize=lf.FIG_SIZE_A_SM)

ax1 = fig.gca()

# colour wheel
colours = lf.Colours()
colour_a = colours.next()
colour_b = colours.next()

a1 = ax1.loglog(f, tf1, '-', color=colour_a, alpha=lf.ALPHA_LINE_A)
ax1.fill_between(f[fill_indices_1], 1, tf1[fill_indices_1], color=colours.alternate(colour_a), zorder=1, alpha=0.5)

a2 = ax1.loglog(f, tf2, '-', color=colour_b, alpha=lf.ALPHA_LINE_A)
ax1.fill_between(f[fill_indices_2], 1, tf2[fill_indices_2], color=colours.alternate(colour_b), zorder=1, alpha=0.5)

ax1.legend(['dc gain = 1000', 'dc gain = 100'], loc='upper right')

ax1.set_xlabel(r'Frequency $\left(\SI{}{\hertz}\right)$')
ax1.set_ylabel('Loop gain')

ax1.set_xlim([1e-2, 1e5])
ax1.set_ylim([1e0, 1e3])

ax1.grid(True)

plt.tight_layout()

plt.savefig(save_path)