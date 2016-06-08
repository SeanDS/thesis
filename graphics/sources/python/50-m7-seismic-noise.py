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
data_path = os.path.join(os.path.dirname(__file__), '..', '..', '..', 'data', 'generated', 'from-matlab', '50-m7-seismic-noise.csv')

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

# plot
ax1.loglog(data[:, 0], data[:, 1], '-', color=colour_a, alpha=lf.ALPHA_LINE_A)
ax1.loglog(data[:, 0], data[:, 2], '-', color=colour_b, alpha=lf.ALPHA_LINE_A)

ax1.set_ylabel(r'Effective $L_{(-)}$ displacement noise [m / sqrt(Hz)]')
ax1.set_xlabel('Frequency [Hz]')

ax1.set_ylim([1e-22, 1e-12])

ax1.grid(True)

# override legend padding
#with plt.rc_context({'legend.borderaxespad': 0.5}):
ax1.legend([r'$M_7$ effective $L_{(-)}$ noise from seismic', 'Sagnac speed meter requirement'], loc='lower left')

plt.tight_layout()

plt.savefig(save_path)