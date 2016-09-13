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
data_path_optickle = os.path.join(os.path.dirname(__file__), '..', '..', '..', 'data', 'generated', 'from-matlab', '70-control-scheme-darm-sensitivity.csv')
data_path_finesse = os.path.join(os.path.dirname(__file__), '..', '..', '..', 'data', '70-et-lf-control-scheme-curve-finesse.csv')
data_path_ref = os.path.join(os.path.dirname(__file__), '..', '..', '..', 'data', '70-et-d-sensitivity-curve-no-sqz.csv')

# load data
data_optickle = np.genfromtxt(data_path_optickle, delimiter=',', skip_header=1)
data_finesse = np.genfromtxt(data_path_finesse, delimiter=',', skip_header=0)
data_ref = np.genfromtxt(data_path_ref, delimiter=',', skip_header=0)

# correct reference DARM definition
data_ref[:, 1] *= 2

colours = lf.Colours()

fig = plt.figure(figsize=lf.FIG_SIZE_A)
ax1 = plt.gca()

ax1.loglog(data_optickle[:, 0], data_optickle[:, 1], '-', color=colours.next(), alpha=lf.ALPHA_LINE_A)
ax1.loglog(data_finesse[:, 0], data_finesse[:, 1], '--', color=colours.next(), alpha=lf.ALPHA_LINE_A)
ax1.loglog(data_ref[:, 0], data_ref[:, 1], '--', color=colours.next(), alpha=lf.ALPHA_LINE_A)

leg = ax1.legend(['Model (Optickle)', 'Model (Finesse)', 'ET-LF-D, no squeezing'], loc='upper right')

plt.grid(True)

ax1.set_xlim((1e0, 1e2))
ax1.set_ylim((1e-24, 1e-20))
ax1.set_xlabel(r'Frequency $\left(\SI{}{\hertz}\right)$')
ax1.set_ylabel(r'Strain $\left(\frac{1}{\sqrt{\SI{}{\hertz}}}\right)$')

plt.tight_layout()

plt.savefig(save_path)