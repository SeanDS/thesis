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
data_path = os.path.join(os.path.dirname(__file__), '..', '..', '..', 'data', '50-optimal-filters.csv')

# load data
data = np.genfromtxt(data_path, delimiter=',', skip_header=1, dtype=complex)

colours = lf.Colours()
colour_a = colours.next()
colour_b = colours.next()
colour_c = colours.next()
colour_d = colours.shades['black']

fig = plt.figure(figsize=lf.FIG_SIZE_A)

ax1 = fig.add_subplot(211)
ax2 = fig.add_subplot(212, sharex=ax1)

# remove axis labels on top plot
plt.setp(ax1.get_xticklabels(), visible=False)

f = data[:, 0]

# make a flat line for PDH coefficient
pdh = np.ones(f.shape)

ax1.loglog(f, np.absolute(data[:, 1]), '-', color=colour_a, alpha=lf.ALPHA_LINE_A)
ax1.loglog(f, np.absolute(data[:, 2]), '-', color=colour_b, alpha=lf.ALPHA_LINE_A)
ax1.loglog(f, np.absolute(data[:, 3]), '-', color=colour_c, alpha=lf.ALPHA_LINE_A)
ax1.loglog(f, np.absolute(pdh), '--', color=colour_d, alpha=lf.ALPHA_LINE_A)

ax2.semilogx(f, -np.unwrap(np.angle(data[:, 1])) * 180 / np.pi, '-', color=colour_a, alpha=lf.ALPHA_LINE_A)
ax2.semilogx(f, np.unwrap(np.angle(data[:, 2])) * 180 / np.pi, '-', color=colour_b, alpha=lf.ALPHA_LINE_A)
ax2.semilogx(f, np.unwrap(np.angle(data[:, 3])) * 180 / np.pi, '-', color=colour_c, alpha=lf.ALPHA_LINE_A)
ax2.semilogx(f, np.unwrap(np.angle(pdh)) * 180 / np.pi, '--', color=colour_d, alpha=lf.ALPHA_LINE_A)

leg = ax1.legend([r'BHD, $R_{M_9}$ = 99.00%', r'BHD, $R_{M_9}$ = 99.90%', r'BHD, $R_{M_9}$ = 99.99%', 'PDH'], loc='lower right')

ax1.grid(True)
ax2.grid(True)

ax1.set_xlim((1e-2, 1e5))
ax2.set_xlim((1e-2, 1e5))
ax1.set_ylim((1e-6, 2))
ax2.set_ylim((-45, 400))
ax2.set_yticks([0, 90, 180, 270, 360])

ax2.set_xlabel(r'Frequency (Hz)')
ax1.set_ylabel('Magnitude')
ax2.set_ylabel(u'Phase (°)')

plt.tight_layout()

plt.savefig(save_path)