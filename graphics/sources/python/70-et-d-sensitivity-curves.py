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
data_path = os.path.join(os.path.dirname(__file__), '..', '..', '..', 'data', '70-et-d-sensitivity-curves.txt')

# load data
data = np.genfromtxt(data_path, delimiter=' ', skip_header=1)

colours = lf.Colours()

fig = plt.figure(figsize=lf.FIG_SIZE_A)
ax1 = plt.gca()

f = data[:, 0]

ax1.loglog(f, data[:, 1], '--', color=colours.next(), alpha=lf.ALPHA_LINE_A)
ax1.loglog(f, data[:, 2], '--', color=colours.next(), alpha=lf.ALPHA_LINE_A)
ax1.loglog(f, data[:, 3], '-', color=colours.shades['black'], alpha=lf.ALPHA_LINE_A, zorder=-1)

leg = ax1.legend(['ET-LF', 'ET-HF', 'Combined'], loc='upper right')

plt.grid(True)

#ax1.set_xlim((1e0, 1e4))
#ax1.set_ylim((1e-26, 1e-16))
ax1.set_xlabel(r'Frequency $\left(\SI{}{\hertz}\right)$')
ax1.set_ylabel(r'Strain $\left(\frac{1}{\sqrt{\SI{}{\hertz}}}\right)$')

plt.tight_layout()

plt.savefig(save_path)