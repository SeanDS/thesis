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
data_path = os.path.join(os.path.dirname(__file__), '..', '..', '..', 'data', '50-pdh-response.csv')

# load data
data = np.genfromtxt(data_path, delimiter=',', skip_header=1, dtype=complex)

colours = lf.Colours()

fig = plt.figure(figsize=lf.FIG_SIZE_A)

# make two y-axes
ax1 = plt.gca()
ax2 = ax1.twinx()

plot1 = ax1.loglog(data[:, 0], np.absolute(data[:, 1]), color=colours.next(), alpha=lf.ALPHA_LINE_A)
plot2 = ax2.semilogx(data[:, 0], np.unwrap(np.angle(data[:, 1])) * 180 / np.pi, color=colours.next(), alpha=lf.ALPHA_LINE_A)

ax1.grid(True)

ax1.set_xlim((1e-1, 1e5))
ax2.set_xlim((1e-1, 1e5))
 
ax1.set_ylim((1e3, 1e5))

leg = ax2.legend(plot1+plot2, ['Magnitude', 'Phase'], loc='upper left')
#leg.get_frame().set_alpha(0.75)

# set labels
ax1.set_xlabel(r'Frequency [$\mathrm{Hz}$]')
ax1.set_ylabel(r'Response [$\mathrm{W} / \mathrm{m}$]')#, color=ax1colour)
ax2.set_ylabel(u'Phase [°]')#, color=ax2colour)

# set phase ticks
ax2.set_yticks([-180, -90, 0, 90, 180])

plt.tight_layout()

plt.savefig(save_path)