# -*- coding: utf-8 -*-
from __future__ import division

import sys
import numpy as np
import matplotlib.pyplot as plt
import lookfeel as lf

# first argument should be save path
save_path = sys.argv[1]

# Paschen's Law
def paschen(A, B, p, d, gamma):
    # breakdown voltage
    V = B * p * d / (np.log((A * p * d) / np.log(1 + 1 / gamma)))
    
    return V

# coefficients for N_2 from Table 14.1 on Page: 546 of Lieberman, M. A., & Lichtenberg, A. J. (2005). Principles of plasma discharges and materials processing. Hoboken, N.J: Wiley-Interscience. 2nd Edition
# (source taken from Wikipedia: https://en.wikipedia.org/wiki/File:Paschen_curves.svg)
A = 11.8
B = 325
p = np.logspace(-2, 7, 10000) # in pascals
d = np.logspace(-1, -3, 3)
gamma_se = 0.01

# generate data
V = [paschen(A, B, p, this_d, gamma_se) for this_d in d]

# convert p from pascals to mbar
# 1 Pa = 1e-5 bar
# 1 bar = 1e3 mbar
# so 1 Pa = 1e-2 mbar
p *= 1e-2

fig = plt.figure(figsize=lf.FIG_SIZE_A)

ax1 = plt.gca()

# colour wheel
colours = lf.Colours()

handles = []

# plot, converting to mbar
for i in range(len(d)):
    this_color = colours.next()
    
    ax1.loglog(p, V[i], color=this_color, alpha=lf.ALPHA_LINE_A, zorder=i)
    
    # fill between curve and top
    h = ax1.fill_between(p, V[i], 1e5, interpolate=True, color=this_color, alpha=lf.ALPHA_LINE_A, zorder=i)
    
    handles.append(h)

# horizontal line representing maximum voltage
handles.append(ax1.hlines(750, p.min() * 1e-2, p.max() * 1e2, colors=colours.next(), linestyles='dashed', zorder=2))

# vertical line representing atmospheric pressure
handles.append(ax1.vlines(1e3, 1e1, 1e6, colors=colours.next(), linestyles='dashed', zorder=2))

# vertical line representing operating pressure
handles.append(ax1.vlines(1e-4, 1e1, 1e6, colors=colours.next(), linestyles='dashed', zorder=2))

ax1.set_xlabel(r'Pressure $\left(\SI{}{\milli\bar}\right)$')
ax1.set_ylabel(r'Breakdown voltage $\left(\SI{}{\volt}\right)$')

# create legend strings
legend_strings = ['{0:02.2f} mm separation'.format(float(d[i]) * 1e3) for i in range(len(d))]

# avoid issues with izip in legend()
legend_strings = list(legend_strings)

# add extra legend entry for lines
legend_strings.append('Max HV output')
legend_strings.append('Atmospheric pressure')
legend_strings.append('Max operating pressure')

ax1.legend(handles, legend_strings, loc='upper left', framealpha=lf.default_settings['legend.framealpha'])

ax1.grid(True)

ax1.set_xlim([1e-5, 1e4])
ax1.set_ylim([1e2, 3e4])

plt.tight_layout()

plt.savefig(save_path)