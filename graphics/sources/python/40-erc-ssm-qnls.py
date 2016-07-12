# -*- coding: utf-8 -*-
from __future__ import division

import sys
import os
import numpy as np
import matplotlib.pyplot as plt
import lookfeel as lf

h = 6.626070040e-34
h_bar = h / (2 * np.pi)

# first argument should be save path
save_path = sys.argv[1]

# data path
data_path_1 = os.path.join(os.path.dirname(__file__), '..', '..', '..', 'data', 'generated', 'from-matlab', '40-erc-ssm-qnls.csv')
data_path_2 = os.path.join(os.path.dirname(__file__), '..', '..', '..', 'data', 'generated', 'from-matlab', '40-erc-equiv-mich-qnls.csv')

# load data
data_1 = np.genfromtxt(data_path_1, delimiter=',', skip_header=1)
data_2 = np.genfromtxt(data_path_2, delimiter=',', skip_header=1)

# manually calculate SQL to touch Michelson at most sensitive frequency (as per Graef et al)
sql = 1.5e-18 * 1e2 / data_1[:, 0]

# figure
fig = plt.figure(figsize=lf.FIG_SIZE_A)

ax1 = fig.gca()

# colour wheel
colours = lf.Colours()

colour_a = colours.next()
colour_b = colours.next()
colour_c = colours.next()

# plot QNLS
ax1.loglog(data_1[:, 0], data_1[:, 1], '-', color=colour_a, alpha=lf.ALPHA_LINE_A)
ax1.loglog(data_1[:, 0], data_1[:, 2], '--', color=colour_b, alpha=lf.ALPHA_LINE_A)
ax1.loglog(data_2[:, 0], data_2[:, 1], '--', color=colours.shades['black'], alpha=lf.ALPHA_LINE_A)
ax1.loglog(data_1[:, 0], sql, '--', color=colour_c, alpha=lf.ALPHA_LINE_A, zorder=-1)

# frequencies to fill
fill_indices = np.where(np.logical_and(data_1[:, 0] >= 100, data_1[:, 0] <= 700))

# fill low frequency region, using same colour as shaded blue region of layout
ax1.fill_between(data_1[:, 0][fill_indices], 1, data_1[fill_indices[0], 1], facecolor='#008cff', alpha=0.5)

ax1.grid(True)

ax1.set_xlim((1e1, 1e5))
ax1.set_ylim((1e-21, 1e-13))

ax1.legend(['Finesse Sagnac speed meter', 'Optickle Sagnac speed meter', 'Optickle equivalent Michelson', 'SQL'], loc='upper right')

# set labels
ax1.set_ylabel('Sensitivity (m / sqrt(Hz))')
ax1.set_xlabel('Frequency (Hz)')

plt.tight_layout()

plt.savefig(save_path)
