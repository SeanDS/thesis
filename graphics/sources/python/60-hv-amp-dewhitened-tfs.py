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
data_path_a = os.path.join(os.path.dirname(__file__), '..', '..', '..', 'data', '60-hv-amp-dewhitened-tfs-channel-one.txt')
data_path_b = os.path.join(os.path.dirname(__file__), '..', '..', '..', 'data', '60-hv-amp-dewhitened-tfs-channel-two.txt')
data_path_c = os.path.join(os.path.dirname(__file__), '..', '..', '..', 'data', '60-hv-amp-dewhitened-tfs-channel-three.txt')
data_path_d = os.path.join(os.path.dirname(__file__), '..', '..', '..', 'data', '60-hv-amp-dewhitened-tfs-channel-four.txt')
data_path_dual = os.path.join(os.path.dirname(__file__), '..', '..', '..', 'data', 'generated', 'from-matlab', '60-hv-amp-dual-dewhitening-sim.csv')

# number of headers
n_headers = 13

# data delimiter
delimiter = None

# load data
data_a = np.genfromtxt(data_path_a, delimiter=delimiter, skip_header=n_headers)
data_b = np.genfromtxt(data_path_b, delimiter=delimiter, skip_header=n_headers)
data_c = np.genfromtxt(data_path_c, delimiter=delimiter, skip_header=n_headers)
data_d = np.genfromtxt(data_path_d, delimiter=delimiter, skip_header=n_headers)
data_dual = np.genfromtxt(data_path_dual, delimiter=',')

# figure
fig = plt.figure(figsize=lf.FIG_SIZE_A)

ax1 = fig.add_subplot(211)
ax2 = fig.add_subplot(212, sharex=ax1)

# colour wheel
colours = lf.Colours()

colour_a = colours.next()
colour_b = colours.next()
colour_c = colours.next()
colour_d = colours.next()
colour_e = colours.next()

# DC adjustment to filter
filter_adjust = 0.35

# plot magnitude
ax1.loglog(data_a[:, 0], data_a[:, 1], '--', color=colour_a, alpha=lf.ALPHA_LINE_A)
ax1.loglog(data_b[:, 0], data_b[:, 3], '--', color=colour_b, alpha=lf.ALPHA_LINE_A)
ax1.loglog(data_c[:, 0], data_c[:, 5], '--', color=colour_c, alpha=lf.ALPHA_LINE_A)
ax1.loglog(data_d[:, 0], data_d[:, 8], '--', color=colour_d, alpha=lf.ALPHA_LINE_A)
ax1.loglog(data_dual[:, 0], filter_adjust * data_dual[:, 1], '-', color=colour_e, alpha=lf.ALPHA_LINE_A, zorder=-1)

# plot phase
ax2.semilogx(data_a[:, 0], data_a[:, 2], '--', color=colour_a, alpha=lf.ALPHA_LINE_A)
ax2.semilogx(data_b[:, 0], data_b[:, 4], '--', color=colour_b, alpha=lf.ALPHA_LINE_A)
ax2.semilogx(data_c[:, 0], data_c[:, 6], '--', color=colour_c, alpha=lf.ALPHA_LINE_A)
ax2.semilogx(data_d[:, 0], data_d[:, 8], '--', color=colour_d, alpha=lf.ALPHA_LINE_A)
ax2.semilogx(data_dual[:, 0], data_dual[:, 2], '-', color=colour_e, alpha=lf.ALPHA_LINE_A, zorder=-1)

ax1.set_ylabel('Magnitude')
ax2.set_xlabel(r'Frequency $\left(\SI{}{\hertz}\right)$')
ax2.set_ylabel(r'Phase $\left(\SI{}{\degree}\right)$')

ax1.set_xlim([1e0, 1e4])
ax1.set_ylim([1e-2, 1e1])
ax2.set_ylim([-180, 180])

# set y-labels for phase
ax2.set_yticks([-180, -135, -90, -45, 0, 45, 90, 135, 180])

# switch off top plot x tick labels, as shared by bottom
ax1.tick_params(axis='x', labelbottom='off')

ax1.grid(True)
ax2.grid(True)

# override legend padding
with plt.rc_context({'legend.borderaxespad': 0.5}):
  ax1.legend(['Channel A', 'Channel B', 'Channel C', 'Channel D', 'Expected filter transfer function'], loc='upper right')

plt.tight_layout()

plt.savefig(save_path)