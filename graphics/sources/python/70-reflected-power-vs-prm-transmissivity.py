# -*- coding: utf-8 -*-
from __future__ import division

import sys
import os
import numpy as np
import matplotlib.pyplot as plt
import lookfeel as lf

# ET-LF input power
input_power = 3 # [W]

# first argument should be save path
save_path = sys.argv[1]

# data paths
data_path = os.path.join(os.path.dirname(__file__), '..', '..', '..', 'data', 'generated', 'from-matlab', '70-reflected-power-vs-prm-transmissivity.csv')

# number of headers
n_headers = 1

# data delimiter
delimiter = ','

# load data
data = np.genfromtxt(data_path, delimiter=delimiter, skip_header=n_headers)

# figure
fig = plt.figure(figsize=lf.FIG_SIZE_A_SM)

ax1 = fig.gca()

# colour wheel
colours = lf.Colours()

# plot
ax1.semilogy(data[:, 0], data[:, 1] / input_power, '-', color=colours.next(), alpha=lf.ALPHA_LINE_A)

# vertical line for Schnupp length
ax1.vlines(0.046, 1e-6, 1e1, colors=colours.next(), linestyles='dashed', zorder=2)

ax1.set_ylabel('Ratio')
ax1.set_xlabel('Power recycling mirror transmissivity')

ax1.legend(['Reflected power / input power', r'$T_{\mathrm{PRM}}$'], loc='lower right')

ax1.set_ylim([1e-4, 1e0])

ax1.grid(True)

plt.tight_layout()

plt.savefig(save_path)