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
data_path = os.path.join(os.path.dirname(__file__), '..', '..', '..', 'data', '20-aligo-noise-budget.csv')

# load data
data = np.genfromtxt(data_path, delimiter=',', skip_header=0)

colours = lf.Colours()

fig = plt.figure(figsize=lf.FIG_SIZE_A)
ax1 = plt.gca()

f = data[:, 0]

# Data columns:
# Frequency [Hz]
# Quantum
# Seismic
# Newtonian
# Suspension thermal
# Coating Brownian
# Coating thermooptic
# Substrate Brownian
# Substrate thermoelastic
# Residual gas
# Total

ax1.loglog(f, data[:, 1], '--', color=colours.next(), alpha=lf.ALPHA_LINE_A)
ax1.loglog(f, data[:, 2], '--', color=colours.next(), alpha=lf.ALPHA_LINE_A)
ax1.loglog(f, data[:, 3], '--', color=colours.next(), alpha=lf.ALPHA_LINE_A)
ax1.loglog(f, data[:, 4], '--', color=colours.next(), alpha=lf.ALPHA_LINE_A)
ax1.loglog(f, data[:, 5], '--', color=colours.next(), alpha=lf.ALPHA_LINE_A)
ax1.loglog(f, data[:, 6], '--', color=colours.next(), alpha=lf.ALPHA_LINE_A)
ax1.loglog(f, data[:, 7], '--', color=colours.next(), alpha=lf.ALPHA_LINE_A)
ax1.loglog(f, data[:, 8], '--', color=colours.next(), alpha=lf.ALPHA_LINE_A)
ax1.loglog(f, data[:, 9], '--', color=colours.next(), alpha=lf.ALPHA_LINE_A)
ax1.loglog(f, data[:, 10], '-', color=colours.shades['black'], alpha=lf.ALPHA_LINE_A, lw=lf.LW_THICK, zorder=-1)

leg = ax1.legend(['Quantum', 'Seismic', 'Newtonian', 'Suspension thermal', 'Coating Brownian', 'Coating thermooptic', 'Substrate Brownian', 'Substrate thermoelastic', 'Residual gas', 'Total'], loc='upper right')

plt.grid(True)

ax1.set_xlim((1e0, 1e4))
ax1.set_ylim((1e-26, 1e-16))
ax1.set_xlabel('Frequency (Hz)')
ax1.set_ylabel('Strain (1 / sqrt(Hz))')

plt.tight_layout()

plt.savefig(save_path)