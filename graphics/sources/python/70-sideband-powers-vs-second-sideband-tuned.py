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
data_path = os.path.join(os.path.dirname(__file__), '..', '..', '..', 'data', 'generated', 'from-matlab', '70-sideband-powers-vs-second-sideband-tuned.csv')

# number of headers
n_headers = 1

# data delimiter
delimiter = ','

# load data
data = np.genfromtxt(data_path, delimiter=delimiter, skip_header=n_headers)

# figure
fig = plt.figure(figsize=lf.FIG_SIZE_A)

ax1 = fig.gca()

# colour wheel
colours = lf.Colours()

colour_a = colours.next()
colour_b = colours.next()
colour_c = colours.next()
colour_d = colours.next()

# plot
ax1.semilogy(data[:, 0] * 1e-6, data[:, 4], '-', color=colour_a, alpha=lf.ALPHA_LINE_A)
ax1.semilogy(data[:, 0] * 1e-6, data[:, 13], '-', color=colour_b, alpha=lf.ALPHA_LINE_A)
ax1.semilogy(data[:, 0] * 1e-6, data[:, 2], '-', color=colour_c, alpha=lf.ALPHA_LINE_A)
ax1.semilogy(data[:, 0] * 1e-6, data[:, 11], '-', color=colour_d, alpha=lf.ALPHA_LINE_A)

# vertical line for new frequency
ax1.vlines(56815505e-6, 1e-10, 1e1, colors=colours.next(), linestyles='dashed', zorder=2)
ax1.vlines(57008000e-6, 1e-10, 1e1, colors=colours.next(), linestyles='dashed', zorder=2)

ax1.set_ylabel(r'Power (W)')
ax1.set_xlabel(r'$f_2$ frequency (MHz)')

#ax1.set_xlim([11e6, 12e6])
#ax1.set_ylim([1e-5, 1e0])

ax1.grid(True)

# override legend padding
#with plt.rc_context({'legend.borderaxespad': 0.5}):
ax1.legend([r'PRC $f_1$', r'SRC $f_1$', r'PRC $f_2$', r'SRC $f_2$', r'ET-LF $f_2$, detuned', r'ET-LF $f_2$, tuned'], loc='upper left', framealpha=0.8)

plt.tight_layout()

plt.savefig(save_path)