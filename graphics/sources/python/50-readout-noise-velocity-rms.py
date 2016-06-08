# -*- coding: utf-8 -*-
from __future__ import division

import sys
import os
import numpy as np
import matplotlib.pyplot as plt
import lookfeel as lf
import rms

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

f = data_sensing[:, 0]
t = 1 / f

# total noise due to sensing and feedback
total_velocity = np.sqrt(np.power(data_sensing[:, 1], 2) + np.power(data_feedback[:, 1], 2))

# calculate RMS
total_velocity_rms = rms.calculate_rms(f, total_velocity)

colours = lf.Colours()

fig = plt.figure(figsize=lf.FIG_SIZE_B)
ax = plt.gca()

ax.loglog(t, total_velocity_rms, color=colours.shades['black'], alpha=lf.ALPHA_LINE_A)
ax.hlines(3.5e-13, t.min(), t.max(), colors=colours.next(), linestyles='dashed', zorder=-1, alpha=lf.ALPHA_LINE_A)

leg = ax.legend(['Total rms', 'Requirement'], loc='lower right')

plt.xticks([1, 60, 3600, 86400], ['1 second', '1 minute', '1 hour', '1 day'])
plt.minorticks_off()

plt.grid(True)

ax.set_xlim((1, 86400))
ax.set_ylim((1e-15, 1e-12))
ax.set_xlabel('Readout period')
ax.set_ylabel('Displacement [m]')

plt.tight_layout()

plt.savefig(save_path)