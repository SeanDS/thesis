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
data_sensing_path = os.path.join(os.path.dirname(__file__), '..', '..', '..', 'data', '50-sensing-noise-velocity.csv')
data_feedback_path = os.path.join(os.path.dirname(__file__), '..', '..', '..', 'data', '50-feedback-noise-velocity.csv')

# load data
data_sensing = np.genfromtxt(data_sensing_path, delimiter=',', skip_header=1, dtype=complex)
data_feedback = np.genfromtxt(data_feedback_path, delimiter=',', skip_header=1, dtype=complex)

# total noise due to sensing and feedback
total_velocity = np.sqrt(np.power(data_sensing[:, 1], 2) + np.power(data_feedback[:, 1], 2))

colours = lf.Colours()

fig = plt.figure(figsize=lf.FIG_SIZE_A)
ax = plt.gca()

d1 = ax.loglog(data_sensing[:, 0], data_sensing[:, 2], '--', color=colours.next(), alpha=lf.ALPHA_LINE_A)
d2 = ax.loglog(data_sensing[:, 0], data_sensing[:, 11], '--', color=colours.next(), alpha=lf.ALPHA_LINE_A)
d3 = ax.loglog(data_sensing[:, 0], data_sensing[:, 12], '--', color=colours.next(), alpha=lf.ALPHA_LINE_A)
d4 = ax.loglog(data_feedback[:, 0], data_feedback[:, 1], '--', color=colours.next(), alpha=lf.ALPHA_LINE_A)
d5 = ax.loglog(data_sensing[:, 0], total_velocity, color=colours.shades['black'], lw=lf.LW_THICK, zorder=-1, alpha=lf.ALPHA_LINE_A)

leg = ax.legend(d1+d2+d3+d4+d5, ['Shot', 'Op-amp', 'ADC', 'Displacement (suppressed)', 'Total'])

plt.grid(True)

ax.set_xlim((1e-5, 1e1))
ax.set_ylim((1e-19, 1e-9))
ax.set_xlabel(r'Frequency [$\mathrm{Hz}$]')
ax.set_ylabel(r'Displacement equivalent noise [$\mathrm{m} / \sqrt{\mathrm{Hz}}$]')

plt.tight_layout()

plt.savefig(save_path)