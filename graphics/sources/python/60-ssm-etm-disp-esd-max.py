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
data_path = os.path.join(os.path.dirname(__file__), '..', '..', '..', 'data', 'generated', 'from-matlab', '60-ssm-etm-disp-vs-esd-force.csv')

# number of headers
n_headers = 1

# data delimiter
delimiter = ','

# load data
data = np.genfromtxt(data_path, delimiter=delimiter, skip_header=n_headers, dtype=complex)

# figure
fig = plt.figure(figsize=lf.FIG_SIZE_A_SM)

ax1 = fig.gca()

# colour wheel
colours = lf.Colours()

colour_a = colours.next()

# calculate displacement from maximum force
max_force = 1.48e-6
displacement = np.absolute(data[:, 1]) * max_force

# plot magnitude
ax1.loglog(data[:, 0], displacement, color=colour_a, alpha=lf.ALPHA_LINE_A)

ax1.set_ylabel(r'Displacement $\left(\SI{}{\meter}\right)$')
ax1.set_xlabel(r'Frequency $\left(\SI{}{\hertz}\right)$')

ax1.grid(True)

plt.tight_layout()

plt.savefig(save_path)