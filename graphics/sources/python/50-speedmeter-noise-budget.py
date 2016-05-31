# -*- coding: utf-8 -*-
from __future__ import division

import sys
import os
import numpy as np
import matplotlib.pyplot as plt
import lookfeel as lf

# first argument should be save path
save_path = sys.argv[1]

# data path
data_path = os.path.join(os.path.dirname(__file__), '..', '..', '..', 'data', '50-speedmeter-noise-budget.csv')

# load data
data = np.genfromtxt(data_path, delimiter=',', skip_header=1)

colours = lf.Colours()

fig = plt.figure(figsize=lf.FIG_SIZE_A)
ax1 = plt.gca()

f = data[:, 0]

# Data columns:
# 	noiseBudget
# 0	frequency
# 1	sum
# 2	coating total
# 3	electronic total
# 4	quantum total
# 5	HDa_DC Quantum
# 6	HDb_DC Quantum
# 7	INTERa_I Quantum
# 8	INTERa_Q Quantum
# 9	INTERb_I Quantum
# 10	INTERb_Q Quantum
# 11	REFL_I Quantum
# 12	REFL_Q Quantum
# 13	seismic total
# 14	M2a Seismic Noise
# 15	M2b Seismic Noise
# 16	suspension total

# PDH noise
pdh = np.sqrt(np.power(data[:, 7], 2) + np.power(data[:, 9], 2))

colour_a = colours.next()
colour_b = colours.next()
colour_c = colours.next()
colour_d = colours.next()
colour_e = colours.next()
colour_f = 'black'

ax1.loglog(f, data[:, 2], '--', color=colour_a, alpha=lf.ALPHA_LINE_A)
ax1.loglog(f, data[:, 3], '--', color=colour_b, alpha=lf.ALPHA_LINE_A)
ax1.loglog(f, data[:, 4], '--', color=colour_c, alpha=lf.ALPHA_LINE_A)
ax1.loglog(f, pdh, ':', color=colour_d, alpha=lf.ALPHA_LINE_A)
ax1.loglog(f, data[:, 16], '--', color=colour_e, alpha=lf.ALPHA_LINE_A)
ax1.loglog(f, data[:, 1], color=colour_f, alpha=lf.ALPHA_LINE_A, lw=lf.LW_THICK)

# frequencies to fill
fill_indices = np.where(np.logical_and(f >= 100, f <= 700))

# fill low frequency region, using same colour as shaded blue region of layout
ax1.fill_between(f[fill_indices], 1, data[fill_indices[0], 1], facecolor='#008cff', alpha=0.5)

leg = ax1.legend(['Coating', 'Electronic', 'Quantum (total)', 'Quantum (PDH)', 'Suspension', 'Total'], loc='upper right')

plt.grid(True)

ax1.set_xlim((1e2, 1e5))
ax1.set_ylim((5e-21, 1e-16))
ax1.set_xlabel(r'Frequency [$\mathrm{Hz}$]')
ax1.set_ylabel(r'Displacement equivalent noise [$\mathrm{m} / \sqrt{\mathrm{Hz}}$]')

plt.tight_layout()

plt.savefig(save_path)