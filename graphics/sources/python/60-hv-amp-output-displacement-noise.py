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
data_path_hv_noise = os.path.join(os.path.dirname(__file__), '..', '..', '..', 'data', '60-hv-amp-output-noise.csv')
data_path_noise_budget = os.path.join(os.path.dirname(__file__), '..', '..', '..', 'data', '50-speedmeter-noise-budget.csv')

# number of headers
n_headers = 1

# data delimiter
delimiter = ','

# load data
data_hv_noise = np.genfromtxt(data_path_hv_noise, delimiter=delimiter, skip_header=n_headers, dtype=complex)
data_noise_budget = np.genfromtxt(data_path_noise_budget, delimiter=',', skip_header=1)

# figure
fig = plt.figure(figsize=lf.FIG_SIZE_A)

ax1 = fig.gca()

# colour wheel
colours = lf.Colours()

# calibrate noise for HV (monitor only measures 1/100th of noise)
data_hv_noise[:, [2, 3, 6, 7, 10, 11]] *= 100

lf_select = data_hv_noise[:, 0] < 100
mf_select = np.logical_and(data_hv_noise[:, 4] >= 100, data_hv_noise[:, 4] < 1000)
hf_select = data_hv_noise[:, 8] >= 1000

# create single data set
f = np.append(data_hv_noise[lf_select, 0], np.append(data_hv_noise[mf_select, 4], data_hv_noise[hf_select, 8]))
voltage_noise = np.append(data_hv_noise[lf_select, 3], np.append(data_hv_noise[mf_select, 7], data_hv_noise[hf_select, 11]))

# suspension TF
# eyeballed from 60-ssm-etm-disp-vs-esd-force.py
suspension_tf = 0.27 / f ** 2

# force at 750 V eyeballed from 60-esd-ansys.py
signal_force = 1.4776e-6 # [N]
signal_voltage = 750 # [V]

# displacement noise:
#   F(signal) / (signal)^2 = F(v2) / (v2)^2
# so
#   F(signal) / (signal)^2 = F(signal + noise) / (signal + noise)^2
# and
#   F(signal + noise) - F(signal) = effective noise force at that signal level

# to calculate F(signal + noise) we need F(signal) / signal^2
esd_constant = signal_force / signal_voltage ** 2

# calculate F(signal + noise)
force_with_noise = esd_constant * (signal_voltage + voltage_noise) ** 2

# subtract force provided by signal
force_noise = force_with_noise - signal_force

# displacement noise is the force noise multiplied by the suspension transfer function
displacement_noise = force_noise * suspension_tf

# plot HV output noise projected into displacement
ax1.loglog(f, displacement_noise, '-', color=colours.next(), alpha=lf.ALPHA_LINE_A)
ax1.loglog(data_noise_budget[:, 0], data_noise_budget[:, 1], '--', color=colours.shades['black'], alpha=lf.ALPHA_LINE_A)

ax1.set_ylabel('Displacement noise (m / sqrt(Hz))')
ax1.set_xlabel('Frequency (Hz)')

ax1.set_xlim([1e1, 1e5])
ax1.set_ylim([1e-24, 1e-14])

ax1.legend(['HV amplifier output', 'Required experiment sensitivity'], loc='upper right')

ax1.grid(True)

plt.tight_layout()

plt.savefig(save_path)