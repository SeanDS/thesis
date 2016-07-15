# -*- coding: utf-8 -*-
from __future__ import division

import sys
import os
import numpy as np
import matplotlib.pyplot as plt
import lookfeel as lf

# first argument should be save path
save_path = sys.argv[1]

# data paths
data_path_single = os.path.join(os.path.dirname(__file__), '..', '..', '..', 'data', 'generated', 'from-matlab', '60-hv-amp-single-dewhitening-sim.csv')
data_path_dual = os.path.join(os.path.dirname(__file__), '..', '..', '..', 'data', 'generated', 'from-matlab', '60-hv-amp-dual-dewhitening-sim.csv')

# data delimiter
delimiter = ','

# load data, fixing complex notation
data_single = np.genfromtxt(data_path_single, delimiter=delimiter)
data_dual = np.genfromtxt(data_path_dual, delimiter=delimiter)

# figure
fig = plt.figure(figsize=lf.FIG_SIZE_A)

ax1 = fig.add_subplot(211)
ax2 = fig.add_subplot(212, sharex=ax1)

# colour wheel
colours = lf.Colours()

colour_a = colours.next()
colour_b = colours.next()

# plot magnitude
ax1.loglog(data_single[:, 0], data_single[:, 1], color=colour_a, alpha=lf.ALPHA_LINE_A)
ax1.loglog(data_dual[:, 0], data_dual[:, 1], color=colour_b, alpha=lf.ALPHA_LINE_A)

# plot phase
ax2.semilogx(data_single[:, 0], data_single[:, 2], color=colour_a, alpha=lf.ALPHA_LINE_A)
ax2.semilogx(data_dual[:, 0], data_dual[:, 2], color=colour_b, alpha=lf.ALPHA_LINE_A)

ax1.set_ylabel('Magnitude')
ax2.set_xlabel('Frequency [Hz]')
ax2.set_ylabel(u'Phase [°]')

#ax1.set_xlim([1e0, 1e4])
#ax1.set_ylim([1e-2, 1e0])
#ax2.set_ylim([-180, 180])

# set y-labels for phase
#ax2.set_yticks([-180, -135, -90, -45, 0, 45, 90, 135, 180])

ax1.grid(True)
ax2.grid(True)

ax1.legend(['Single 10dB dewhitener', 'Dual 10db dewhiteners'], loc='lower left')

plt.tight_layout()

plt.savefig(save_path)