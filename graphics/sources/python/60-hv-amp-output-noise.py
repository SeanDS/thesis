# -*- coding: utf-8 -*-
from __future__ import division

import sys
import os
import numpy as np
import matplotlib.pyplot as plt
import lookfeel as lf

kb = 1.380e-23
T = 300

# first argument should be save path
save_path = sys.argv[1]

# data paths
data_path = os.path.join(os.path.dirname(__file__), '..', '..', '..', 'data', '60-hv-amp-output-noise.csv')

# number of headers
n_headers = 1

# data delimiter
delimiter = ','

# load data
data = np.genfromtxt(data_path, delimiter=delimiter, skip_header=n_headers, dtype=complex)

# figure
fig = plt.figure(figsize=lf.FIG_SIZE_A)

ax1 = fig.gca()

# colour wheel
colours = lf.Colours()

colour_a = colours.next()
colour_b = colours.next()
colour_c = colours.next()

# calibrate noise for HV (monitor only measures 1/100th of noise)
data[:, [2, 3, 6, 7, 10, 11]] *= 100

lf_select = data[:, 0] < 100
mf_select = np.logical_and(data[:, 4] >= 100, data[:, 4] < 1000)
hf_select = data[:, 8] >= 1000

# plot SR785 noise
p1 = ax1.loglog(data[lf_select, 0], data[lf_select, 1], '-', color=colour_a, alpha=lf.ALPHA_LINE_A)
ax1.loglog(data[mf_select, 4], data[mf_select, 5], '-', color=colour_a, alpha=lf.ALPHA_LINE_A)
ax1.loglog(data[hf_select, 8], data[hf_select, 9], '-', color=colour_a, alpha=lf.ALPHA_LINE_A)

# plot 0V output noise
p2 = ax1.loglog(data[lf_select, 0], data[lf_select, 2], '-', color=colour_b, alpha=lf.ALPHA_LINE_A)
ax1.loglog(data[mf_select, 4], data[mf_select, 6], '-', color=colour_b, alpha=lf.ALPHA_LINE_A)
ax1.loglog(data[hf_select, 8], data[hf_select, 10], '-', color=colour_b, alpha=lf.ALPHA_LINE_A)

# plot HV output noise
p3 = ax1.loglog(data[lf_select, 0], data[lf_select, 3], '-', color=colour_c, alpha=lf.ALPHA_LINE_A)
ax1.loglog(data[mf_select, 4], data[mf_select, 7], '-', color=colour_c, alpha=lf.ALPHA_LINE_A)
ax1.loglog(data[hf_select, 8], data[hf_select, 11], '-', color=colour_c, alpha=lf.ALPHA_LINE_A)

ax1.set_ylabel('Noise (V / sqrt(Hz))')
ax1.set_xlabel('Frequency (Hz)')

ax1.set_xlim([1e0, 1e5])
ax1.set_ylim([1e-9, 1e-3])

ax1.grid(True)

# override legend padding
#with plt.rc_context({'legend.borderaxespad': 0.5}):
ax1.legend(p1+p2+p3, ['SR785 noise', 'Zero dc output noise', 'Max dc output noise'], loc='upper right', framealpha=lf.default_settings['legend.framealpha'])

plt.tight_layout()

plt.savefig(save_path)