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
data_path = os.path.join(os.path.dirname(__file__), '..', '..', '..', 'data', 'generated', 'from-matlab', '70-total-power-vs-darm-offset-detuned.csv')

# number of headers
n_headers = 1

# data delimiter
delimiter = ','

# load data
data = np.genfromtxt(data_path, delimiter=delimiter, skip_header=n_headers)

# figure
fig = plt.figure(figsize=lf.FIG_SIZE_C)

ax1 = fig.add_subplot(211)
ax2 = fig.add_subplot(212, sharex=ax1)

# colour wheel
colours = lf.Colours()

darm_offset = 12e-12
colour_line = colours.next()

# plot
ax1.semilogy(data[:, 0] * 1e12, data[:, 28], '-', color=colours.next(), alpha=lf.ALPHA_LINE_A)

# vertical line for DARM offset
ax1.vlines(darm_offset * 1e12, 1e-8, 1e1, colors=colour_line, linestyles='dashed', zorder=2)

ax2.plot(data[:, 0] * 1e12, data[:, 14] * 1e-3, '-', color=colours.next(), alpha=lf.ALPHA_LINE_A)
ax2.plot(data[:, 0] * 1e12, data[:, 23] * 1e-3, '-', color=colours.next(), alpha=lf.ALPHA_LINE_A)

# vertical line for DARM offset
ax2.vlines(darm_offset * 1e12, 1, 30, colors=colour_line, linestyles='dashed', zorder=2)

ax1.set_ylabel('Power (W)')
ax2.set_xlabel('DARM offset (pm)')
ax2.set_ylabel('Power (kW)')

ax1.set_xlim([-1e2, 1e2])
ax1.set_ylim([1e-5, 1e0])
ax2.set_ylim([16, 19])

ax1.grid(True)
ax2.grid(True)

# override legend padding
#with plt.rc_context({'legend.borderaxespad': 0.5}):
ax1.legend(['Output', 'ET-LF DARM offset'], loc='lower left', framealpha=0.8)
ax2.legend(['X arm', 'Y arm', 'ET-LF DARM offset'], loc='lower left', framealpha=0.8)

plt.tight_layout()

plt.savefig(save_path)