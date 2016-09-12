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
data_path_pdh = os.path.join(os.path.dirname(__file__), '..', '..', '..', 'data', '50-pdh-response.csv')
data_path_bhd = os.path.join(os.path.dirname(__file__), '..', '..', '..', 'data', '50-bhd-response.csv')

# load data
data_pdh = np.genfromtxt(data_path_pdh, delimiter=',', skip_header=1, dtype=complex)
data_bhd = np.genfromtxt(data_path_bhd, delimiter=',', skip_header=1, dtype=complex)

# figure
fig = plt.figure(figsize=lf.FIG_SIZE_A)

ax1 = fig.add_subplot(211)
ax2 = fig.add_subplot(212, sharex=ax1)

# colour wheel
colours = lf.Colours()

colour_a = colours.next()
colour_b = colours.next()

# plot magnitude
ax1.loglog(data_bhd[:, 0], np.absolute(data_bhd[:, 1]), color=colour_a, alpha=lf.ALPHA_LINE_A)
ax1.loglog(data_pdh[:, 0], np.absolute(data_pdh[:, 1]), color=colour_b, alpha=lf.ALPHA_LINE_A)

# plot phase
ax2.semilogx(data_bhd[:, 0], np.angle(data_bhd[:, 1]) * 180 / np.pi, color=colour_a, alpha=lf.ALPHA_LINE_A)
ax2.semilogx(data_pdh[:, 0], np.angle(data_pdh[:, 1]) * 180 / np.pi, color=colour_b, alpha=lf.ALPHA_LINE_A)

ax1.grid(True)
ax2.grid(True)

ax1.set_ylim((1e3, 1e11))
ax2.set_ylim((-200, 200))

ax1.legend(['BHD', 'PDH'], loc='upper left')

# set labels
ax1.set_ylabel(r'$L_{(-)}$ response (W / m)')
ax2.set_xlabel('Frequency (Hz)')
ax2.set_ylabel(u'Phase (deg)')

# set phase ticks
ax2.set_yticks([-180, -135, -90, -45, 0, 45, 90, 135, 180])

plt.tight_layout()

plt.savefig(save_path)