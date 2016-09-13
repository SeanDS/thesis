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
data_path_measurements = os.path.join(os.path.dirname(__file__), '..', '..', '..', 'data', '60-hv-amp-channel-one-tfs.csv')
data_path_single_sim = os.path.join(os.path.dirname(__file__), '..', '..', '..', 'data', 'generated', 'from-matlab', '60-hv-amp-single-dewhitening-sim.csv')
data_path_dual_sim = os.path.join(os.path.dirname(__file__), '..', '..', '..', 'data', 'generated', 'from-matlab', '60-hv-amp-dual-dewhitening-sim.csv')

# data delimiter
delimiter = ','

# load data
data_measurements = np.genfromtxt(data_path_measurements, delimiter=delimiter, skip_header=1)
data_single_sim = np.genfromtxt(data_path_single_sim, delimiter=delimiter, skip_header=0)
data_dual_sim = np.genfromtxt(data_path_dual_sim, delimiter=delimiter, skip_header=0)

# figure
fig = plt.figure(figsize=lf.FIG_SIZE_B)

ax1 = fig.add_subplot(211)
ax2 = fig.add_subplot(212, sharex=ax1)

# colour wheel
colours = lf.Colours()

colour_a = colours.next()
colour_b = colours.next()
colour_c = colours.next()
colour_d = colours.next()
colour_e = colours.next()
colour_f = colours.next()

# DC adjustment to filter
filter_adjust = 0.35

# plot magnitude
ax1.loglog(data_measurements[:, 0], data_measurements[:, 1], '--', color=colour_a, alpha=lf.ALPHA_LINE_A)
ax1.loglog(data_measurements[:, 0], data_measurements[:, 3], '--', color=colour_b, alpha=lf.ALPHA_LINE_A)
ax1.loglog(data_measurements[:, 0], data_measurements[:, 5], '--', color=colour_c, alpha=lf.ALPHA_LINE_A)
ax1.loglog(data_measurements[:, 0], data_measurements[:, 7], '--', color=colour_d, alpha=lf.ALPHA_LINE_A)
ax1.loglog(data_single_sim[:, 0], filter_adjust * data_single_sim[:, 1], '-', color=colour_e, alpha=lf.ALPHA_LINE_A, zorder=-1)
ax1.loglog(data_dual_sim[:, 0], filter_adjust * data_dual_sim[:, 1], '-', color=colour_f, alpha=lf.ALPHA_LINE_A, zorder=-1)

# plot phase
ax2.semilogx(data_measurements[:, 0], data_measurements[:, 2], '--', color=colour_a, alpha=lf.ALPHA_LINE_A)
ax2.semilogx(data_measurements[:, 0], data_measurements[:, 4], '--', color=colour_b, alpha=lf.ALPHA_LINE_A)
ax2.semilogx(data_measurements[:, 0], data_measurements[:, 6], '--', color=colour_c, alpha=lf.ALPHA_LINE_A)
ax2.semilogx(data_measurements[:, 0], data_measurements[:, 8], '--', color=colour_d, alpha=lf.ALPHA_LINE_A)
ax2.semilogx(data_single_sim[:, 0], data_single_sim[:, 2], '-', color=colour_e, alpha=lf.ALPHA_LINE_A, zorder=-1)
ax2.semilogx(data_dual_sim[:, 0], data_dual_sim[:, 2], '-', color=colour_f, alpha=lf.ALPHA_LINE_A, zorder=-1)

ax1.set_ylabel('Magnitude')
ax2.set_xlabel(r'Frequency $\left(\SI{}{\hertz}\right)$')
ax2.set_ylabel(r'Phase $\left(\SI{}{\degree}\right)$')

ax1.set_xlim([1e0, 1e4])
#ax1.set_ylim([1e-2, 1e1])
ax2.set_ylim([-200, 200])

# set y-labels for phase
ax2.set_yticks([-180, -135, -90, -45, 0, 45, 90, 135, 180])

ax1.grid(True)
ax2.grid(True)

# call this BEFORE adding the legend, because tight_layout ignores legends
fig.tight_layout()

legend1 = ax1.legend(['Both on', 'First on', 'Second on', 'Both off', 'Sim 10 dB', 'Sim 20 dB'], bbox_to_anchor=(1, 0.5), loc='center left')

plt.savefig(save_path, bbox_extra_artists=(legend1,), bbox_inches='tight')