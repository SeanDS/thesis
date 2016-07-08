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
data_path = os.path.join(os.path.dirname(__file__), '..', '..', '..', 'data', 'generated', 'from-matlab', '40-mich-vs-fp-mich-noise.csv')

# load data
data = np.genfromtxt(data_path, delimiter=',', skip_header=1, dtype=complex)

# figure
fig = plt.figure(figsize=lf.FIG_SIZE_B)

ax1 = fig.gca()

# colour wheel
colours = lf.Colours()

colour_a = colours.next()
colour_b = colours.next()

# plot noise
ax1.loglog(data[:, 0], data[:, 1], color=colour_a, alpha=lf.ALPHA_LINE_A)
ax1.loglog(data[:, 0], data[:, 2], color=colour_b, alpha=lf.ALPHA_LINE_A)

ax1.grid(True)

#ax1.set_xlim((1e-1, 1e5))
ax1.set_ylim((1e-11, 1e-6))

ax1.legend(['Michelson', 'Fabry-Perot Michelson'], loc='upper right')

# set labels
ax1.set_ylabel('Noise (W / sqrt(Hz))')
ax1.set_xlabel('Frequency (Hz)')

plt.tight_layout()

plt.savefig(save_path)