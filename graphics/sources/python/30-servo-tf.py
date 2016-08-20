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
data_path = os.path.join(os.path.dirname(__file__), '..', '..', '..', 'data', 'generated', 'from-matlab', '30-servo-tf.csv')

# load data
data = np.genfromtxt(data_path, delimiter=',')

fig = plt.figure(figsize=lf.FIG_SIZE_A)

ax1 = fig.add_subplot(211)
ax2 = fig.add_subplot(212, sharex=ax1)

# colour wheel
colours = lf.Colours()
colour_a = colours.next()
colour_b = colours.next()
colour_c = colours.next()

# plot magnitude
a1 = ax1.loglog(data[:, 0], data[:, 3], '-', color=colour_a, alpha=lf.ALPHA_LINE_A)
a2 = ax1.loglog(data[:, 0], data[:, 1], '-', color=colour_b, alpha=lf.ALPHA_LINE_A)

# add point representing measurement frequency
a3 = ax1.vlines(70, 1e-1, 1e14, colors=colour_c, linestyles='dashed', zorder=2)

# plot phase
ax2.semilogx(data[:, 0], data[:, 4], '-', color=colour_a, alpha=lf.ALPHA_LINE_A)
ax2.semilogx(data[:, 0], data[:, 2], '-', color=colour_b, alpha=lf.ALPHA_LINE_A)
ax2.vlines(70, -300, 300, colors=colour_c, linestyles='dashed', zorder=2)

ax1.set_ylabel('Magnitude')
ax2.set_xlabel('Frequency (Hz)')
ax2.set_ylabel(u'Phase (°)')

ax1.set_ylim([1e0, 1e11])
ax1.set_yticks([1e0, 1e2, 1e4, 1e6, 1e8, 1e10])

with plt.rc_context({'legend.borderaxespad': 1}):
  ax1.legend(['Laser temperature', 'Laser PZT', 'Measurement frequency'], loc='lower left')

# set y-labels for phase
ax2.set_ylim([-200, 200])
ax2.set_yticks([-180, -135, -90, -45, 0, 45, 90, 135, 180])

ax1.grid(True)
ax2.grid(True)

plt.tight_layout()

plt.savefig(save_path)