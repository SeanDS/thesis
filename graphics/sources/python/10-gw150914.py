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
data_path_h1 = os.path.join(os.path.dirname(__file__), '..', '..', '..', 'data', '10-gw150914-h1.txt')
data_path_l1 = os.path.join(os.path.dirname(__file__), '..', '..', '..', 'data', '10-gw150914-l1.txt')
data_path_h1_numerical = os.path.join(os.path.dirname(__file__), '..', '..', '..', 'data', '10-gw150914-h1-numerical.txt')
data_path_l1_numerical = os.path.join(os.path.dirname(__file__), '..', '..', '..', 'data', '10-gw150914-l1-numerical.txt')

# load data
data_h1 = np.genfromtxt(data_path_h1, delimiter=' ', skip_header=1)
data_l1 = np.genfromtxt(data_path_l1, delimiter=' ', skip_header=1)
data_h1_num = np.genfromtxt(data_path_h1_numerical, delimiter=' ', skip_header=1)
data_l1_num = np.genfromtxt(data_path_l1_numerical, delimiter=' ', skip_header=1)

fig = plt.figure(figsize=lf.FIG_SIZE_A)

ax1 = fig.add_subplot(211)
ax2 = fig.add_subplot(212, sharex=ax1)

# colour wheel
colours = lf.Colours()
colour_a = colours.next()
colour_b = colours.next()

scale = 1e-21

# plot raw data
ax1.plot(data_h1[:, 0], scale * data_h1[:, 1], '-', color=colour_a, alpha=lf.ALPHA_LINE_A)
ax1.plot(data_l1[:, 0], scale * data_l1[:, 1], '-', color=colour_b, alpha=lf.ALPHA_LINE_A)

# plot template
ax2.plot(data_h1_num[:, 0], scale * data_h1_num[:, 1], '-', color=colour_a, alpha=lf.ALPHA_LINE_A)
ax2.plot(data_l1_num[:, 0], scale * data_l1_num[:, 1], '-', color=colour_b, alpha=lf.ALPHA_LINE_A)

ax1.set_ylabel('Strain')
ax2.set_xlabel(r'Time $\left(\SI{}{\second}\right)$')

ax1.set_ylim([scale * -1.5, scale * 1.5])
ax2.set_ylim([scale * -1.5, scale * 1.5])
ax2.set_xlim([0.25, 0.45])

with plt.rc_context({'legend.borderaxespad': 0.5}):
  ax1.legend(['Hanford, measured', 'Louisiana, measured'], loc='upper left')
  ax2.legend(['Hanford, numerical relativity', 'Louisiana, numerical relativity'], loc='upper left')

# set y-labels
#ax2.set_ylim([-200, 200])
#ax2.set_yticks([-180, -135, -90, -45, 0, 45, 90, 135, 180])

ax1.grid(True)
ax2.grid(True)

plt.tight_layout()

plt.savefig(save_path)