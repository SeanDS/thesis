# -*- coding: utf-8 -*-
from __future__ import division

import sys
import os
import numpy as np
import matplotlib.pyplot as plt
import lookfeel as lf

## Noise budget for circuit
transimp_1 = 10e3
transimp_2 = 100e3

# inverting input inpedance stage 2
input_imp_2_1 = 1000

# non-inverting input impedance stage 2
input_imp_2_2 = 1000
kb = 1.380e-23
T = 300
    
# flat noise levels at high frequency
voltage_noise_flat = 3e-9 # V / sqrt(Hz)
current_noise_flat = 400e-15 # A / sqrt(Hz)
   
# noise corner frequencies
voltage_noise_corner_freq = 4 # Hz
current_noise_corner_freq = 230 # Hz

## Main plot script

# first argument should be save path
save_path = sys.argv[1]

# data path
data_noise_path = os.path.join(os.path.dirname(__file__), '..', '..', '..', 'data', '50-op-amp-noise-spectrum-reduced.csv')
data_null_path = os.path.join(os.path.dirname(__file__), '..', '..', '..', 'data', '50-op-amp-null-spectrum-reduced.csv')

# load data
data_noise = np.genfromtxt(data_noise_path, delimiter=',')
data_null = np.genfromtxt(data_null_path, delimiter=',')

# subtract null noise (this is added twice - once on the +ve input and once on the -ve input that gets subtracted away)
noise_avg = np.sqrt(data_noise[:, 1] ** 2 - 2 * (data_null[:, 1] ** 2))

# average data
n_moving_avg = 10

noise_avg = np.convolve(noise_avg, np.ones((n_moving_avg,)) / n_moving_avg, mode='same')
null_avg = np.convolve(data_null[:, 1], np.ones((n_moving_avg,)) / n_moving_avg, mode='same')

f = data_noise[:, 0]

vn_opa = np.sqrt(voltage_noise_flat ** 2 + (voltage_noise_flat * np.sqrt(voltage_noise_corner_freq / f)) ** 2)
cn_opa = np.sqrt(current_noise_flat ** 2 + (current_noise_flat * np.sqrt(current_noise_corner_freq / f)) ** 2)

gain_stage_2 = transimp_2 / input_imp_2_1

# noise from first OPA227
opa_noise_1 = gain_stage_2 * np.sqrt(vn_opa ** 2 + (cn_opa * transimp_1) ** 2)

# johnson noise from first OPA227 feedback
johnson_noise_1 = np.ones(f.shape) * gain_stage_2 * np.sqrt(4 * kb * transimp_1 * T)

# noise from second OPA227
opa_noise_2 = np.sqrt(vn_opa ** 2 + (cn_opa * transimp_2) ** 2)

# noise from inverting resistor
johnson_noise_2_1 = gain_stage_2 * np.ones(f.shape) * np.sqrt(4 * kb * input_imp_2_1 * T)

# noise from feedback resistor
johnson_noise_2_2 = np.ones(f.shape) * np.sqrt(4 * kb * transimp_2 * T)

# noise from non-inverting resistor
johnson_noise_2_3 = np.ones(f.shape) * np.sqrt(4 * kb * input_imp_2_2 * T)

# total model noises (including null stream)
total = np.sqrt(opa_noise_1 ** 2 + johnson_noise_1 ** 2 + opa_noise_2 ** 2 + johnson_noise_2_1 ** 2 + johnson_noise_2_1 ** 2 + johnson_noise_2_2 ** 2 + johnson_noise_2_3 ** 2 + null_avg ** 2)

colours = lf.Colours()
colour_a = colours.next()
colour_b = colours.next()
colour_c = colours.next()
colour_d = colours.next()
colour_e = colours.next()

fig = plt.figure(figsize=lf.FIG_SIZE_A)
ax = fig.gca()

# select only one in ten values to plot
select = 5

ax.loglog(data_noise[::select, 0], noise_avg[::select], color=colour_a, alpha=lf.ALPHA_LINE_A)
ax.loglog(data_null[::select, 0], null_avg[::select], color=colour_b, alpha=lf.ALPHA_LINE_A)
ax.loglog(f[::select], total[::select], color=colour_c, alpha=lf.ALPHA_LINE_A)
ax.loglog(f[::select], opa_noise_1[::select], '--', color=colour_d, alpha=lf.ALPHA_LINE_A)
ax.loglog(f[::select], johnson_noise_1[::select], '--', color=colour_e, alpha=lf.ALPHA_LINE_A)

leg = plt.legend(['Op-amp noise', 'ADC noise', 'Model (total)', r'Model ($N_1$)', r'Model ($R_T$)'])

plt.grid(True)

plt.xlim((1e-3, 1e2))
plt.ylim((1e-6, 1e-3))
plt.xlabel(r'Frequency [$\mathrm{Hz}$]')
plt.ylabel(r'Voltage [$\mathrm{V} / \sqrt{\mathrm{Hz}}$]')

plt.tight_layout()

plt.savefig(save_path)