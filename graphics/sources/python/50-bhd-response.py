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
data_path = os.path.join(os.path.dirname(__file__), '..', '..', '..', 'data', '50-bhd-response.csv')

# load data
data = np.genfromtxt(data_path, delimiter=',', skip_header=1, dtype=complex)

# figure
fig = plt.figure(figsize=lf.FIG_SIZE_A)

ax1 = fig.add_subplot(211)
ax2 = fig.add_subplot(212, sharex=ax1)

# colour wheel
colours = lf.Colours()

colour_a = colours.next()
colour_b = colours.next()

# plot magnitude
ax1.loglog(data[:, 0], np.absolute(data[:, 1]), color=colour_a, alpha=lf.ALPHA_LINE_A)

# plot phase
ax2.semilogx(data[:, 0], np.angle(data[:, 1]) * 180 / np.pi, color=colour_a, alpha=lf.ALPHA_LINE_A)

ax1.grid(True)
ax2.grid(True)

ax1.set_xlim((1e-1, 1e5))
ax1.set_ylim((1e6, 1e11))
ax2.set_ylim((-200, 200))

# set labels
ax1.set_ylabel('$L_{(-)}$ response to\nBHD readout (W / m)')
ax2.set_xlabel('Frequency (Hz)')
ax2.set_ylabel(u'Phase (deg)')#, color=ax2colour)

# set phase ticks
ax2.set_yticks([-180, -135, -90, -45, 0, 45, 90, 135, 180])

plt.tight_layout()

plt.savefig(save_path)