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
data_path_a = os.path.join(os.path.dirname(__file__), '..', '..', '..', 'data', '60-hv-amp-coherence-channel-one.txt')
data_path_b = os.path.join(os.path.dirname(__file__), '..', '..', '..', 'data', '60-hv-amp-coherence-channel-two.txt')
data_path_c = os.path.join(os.path.dirname(__file__), '..', '..', '..', 'data', '60-hv-amp-coherence-channel-three.txt')
data_path_d = os.path.join(os.path.dirname(__file__), '..', '..', '..', 'data', '60-hv-amp-coherence-channel-four.txt')

# number of headers
n_headers = 13

# data delimiter
delimiter = None

# load data
data_a = np.genfromtxt(data_path_a, delimiter=delimiter, skip_header=n_headers)
data_b = np.genfromtxt(data_path_b, delimiter=delimiter, skip_header=n_headers)
data_c = np.genfromtxt(data_path_c, delimiter=delimiter, skip_header=n_headers)
data_d = np.genfromtxt(data_path_d, delimiter=delimiter, skip_header=n_headers)

# figure
fig = plt.figure(figsize=lf.FIG_SIZE_B)

ax1 = fig.add_subplot(221)
ax2 = fig.add_subplot(222, sharex=ax1, sharey=ax1)
ax3 = fig.add_subplot(223, sharex=ax1, sharey=ax1)
ax4 = fig.add_subplot(224, sharex=ax1, sharey=ax1)

# colour wheel
colours = lf.Colours()

colour_a = colours.next()
colour_b = colours.next()
colour_c = colours.next()
colour_d = colours.next()

# divide frequencies by 1000 to convert to kHz
data_a[:, 0] /= 1000
data_b[:, 0] /= 1000
data_c[:, 0] /= 1000
data_d[:, 0] /= 1000

# selector, to choose only every nth data point
x_select = 100

# plot coherence
with plt.rc_context({'lines.markeredgewidth': 1, 'lines.markersize': 3}):
  la, = ax1.plot(data_a[::x_select, 0], data_a[::x_select, 1], '-', color=colour_a, alpha=lf.ALPHA_LINE_A)
  ax1.plot(data_a[::x_select, 0], data_a[::x_select, 2], '.', color=colour_b, alpha=lf.ALPHA_LINE_A)
  ax1.plot(data_a[::x_select, 0], data_a[::x_select, 3], '.', color=colour_c, alpha=lf.ALPHA_LINE_A)
  ax1.plot(data_a[::x_select, 0], data_a[::x_select, 4], '.', color=colour_d, alpha=lf.ALPHA_LINE_A)
  
  ax2.plot(data_b[::x_select, 0], data_b[::x_select, 1], '.', color=colour_a, alpha=lf.ALPHA_LINE_A)
  lb, = ax2.plot(data_b[::x_select, 0], data_b[::x_select, 2], '-', color=colour_b, alpha=lf.ALPHA_LINE_A)
  ax2.plot(data_b[::x_select, 0], data_b[::x_select, 3], '.', color=colour_c, alpha=lf.ALPHA_LINE_A)
  ax2.plot(data_b[::x_select, 0], data_b[::x_select, 4], '.', color=colour_d, alpha=lf.ALPHA_LINE_A)
  
  ax3.plot(data_c[::x_select, 0], data_c[::x_select, 1], '.', color=colour_a, alpha=lf.ALPHA_LINE_A)
  ax3.plot(data_c[::x_select, 0], data_c[::x_select, 2], '.', color=colour_b, alpha=lf.ALPHA_LINE_A)
  lc, = ax3.plot(data_c[::x_select, 0], data_c[::x_select, 3], '-', color=colour_c, alpha=lf.ALPHA_LINE_A)
  ax3.plot(data_c[::x_select, 0], data_c[::x_select, 4], '.', color=colour_d, alpha=lf.ALPHA_LINE_A)
  
  ax4.plot(data_d[::x_select, 0], data_d[::x_select, 1], '.', color=colour_a, alpha=lf.ALPHA_LINE_A)
  ax4.plot(data_d[::x_select, 0], data_d[::x_select, 2], '.', color=colour_b, alpha=lf.ALPHA_LINE_A)
  ax4.plot(data_d[::x_select, 0], data_d[::x_select, 3], '.', color=colour_c, alpha=lf.ALPHA_LINE_A)
  ld, = ax4.plot(data_d[::x_select, 0], data_d[::x_select, 4], '-', color=colour_d, alpha=lf.ALPHA_LINE_A)

ax3.set_xlabel(r'Frequency $\left(\SI{}{\kilo\hertz}\right)$')
ax4.set_xlabel(r'Frequency $\left(\SI{}{\kilo\hertz}\right)$')
ax1.set_ylabel('Coherence')
ax3.set_ylabel('Coherence')

ax1.set_xlim([0, 10])
ax1.set_ylim([0, 1.1])

ax1.grid(True)
ax2.grid(True)
ax3.grid(True)
ax4.grid(True)

# call this BEFORE adding the legend, because tight_layout ignores legends
plt.tight_layout()

#with plt.rc_context({'legend.borderaxispad': 0}):
legend1 = fig.legend([la, lb, lc, ld], ['Channel A', 'Channel B', 'Channel C', 'Channel D'], bbox_to_anchor=(1, 0.5), loc='center left')

plt.savefig(save_path, bbox_extra_artists=(legend1,), bbox_inches='tight')