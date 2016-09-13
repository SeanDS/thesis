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
data_sensing_velocity_path = os.path.join(os.path.dirname(__file__), '..', '..', '..', 'data', '50-sensing-noise-velocity.csv')
data_feedback_velocity_path = os.path.join(os.path.dirname(__file__), '..', '..', '..', 'data', '50-feedback-noise-velocity.csv')
data_sensing_mixed_path = os.path.join(os.path.dirname(__file__), '..', '..', '..', 'data', '50-sensing-noise-mixed.csv')
data_feedback_mixed_path = os.path.join(os.path.dirname(__file__), '..', '..', '..', 'data', '50-feedback-noise-mixed.csv')

# load data
data_sensing_velocity = np.genfromtxt(data_sensing_velocity_path, delimiter=',', skip_header=1, dtype=complex)
data_feedback_velocity = np.genfromtxt(data_feedback_velocity_path, delimiter=',', skip_header=1, dtype=complex)
data_sensing_mixed = np.genfromtxt(data_sensing_mixed_path, delimiter=',', skip_header=1, dtype=complex)
data_feedback_mixed = np.genfromtxt(data_feedback_mixed_path, delimiter=',', skip_header=1, dtype=complex)

# total noise due to sensing and feedback
total_velocity = np.sqrt(np.power(data_sensing_velocity[:, 1], 2) + np.power(data_feedback_velocity[:, 1], 2))
total_mixed = np.sqrt(np.power(data_sensing_mixed[:, 1], 2) + np.power(data_feedback_mixed[:, 1], 2))

f = data_sensing_velocity[:, 0]
t = 1 / f

# calculate RMS
total_velocity_rms = rms.calculate_rms(f, total_velocity)
total_mixed_rms = rms.calculate_rms(f, total_mixed)

colours = lf.Colours()

fig = plt.figure(figsize=lf.FIG_SIZE_A_SM)
ax = plt.gca()

ax.loglog(t, total_mixed_rms, color=colours.shades['black'], alpha=lf.ALPHA_LINE_A)
ax.loglog(t, total_velocity_rms, '--', color=colours.shades['black'], alpha=lf.ALPHA_LINE_A)
ax.hlines(3.5e-13, t.min(), t.max(), colors=colours.next(), linestyles='dashed', zorder=-1, alpha=lf.ALPHA_LINE_A)

leg = ax.legend(['Total rms (combined)', 'Total rms (velocity)', 'Requirement'], loc='upper left')

plt.xticks([1, 60, 3600, 86400], ['1 second', '1 minute', '1 hour', '1 day'])
plt.minorticks_off()

plt.grid(True)

ax.set_xlim((1, 86400))
ax.set_ylim((1e-15, 1e-12))
ax.set_xlabel('Readout period')
ax.set_ylabel(r'Displacement $\left(\SI{}{\meter}\right)$')

plt.tight_layout()

plt.savefig(save_path)