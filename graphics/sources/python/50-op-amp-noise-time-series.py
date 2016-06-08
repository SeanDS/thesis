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
data_noise_path = os.path.join(os.path.dirname(__file__), '..', '..', '..', 'data', '50-op-amp-noise-time-series-reduced.csv')
data_null_path = os.path.join(os.path.dirname(__file__), '..', '..', '..', 'data', '50-op-amp-null-time-series-reduced.csv')
data_temperature_path = os.path.join(os.path.dirname(__file__), '..', '..', '..', 'data', '50-op-amp-temperature-time-series-reduced.csv')

# load data
data_noise = np.genfromtxt(data_noise_path, delimiter=',')
data_null = np.genfromtxt(data_null_path, delimiter=',')
data_temperature = np.genfromtxt(data_temperature_path, delimiter=',')

# subtract first GPS time from all values (so t = 0 at start)
data_noise[:, 0] -= data_noise[0, 0]
data_null[:, 0] -= data_null[0, 0]
data_temperature[:, 0] -= data_temperature[0, 0]

# convert seconds to days
data_noise[:, 0] /= 86400
data_null[:, 0] /= 86400
data_temperature[:, 0] /= 86400

# convert volts to millivolts
data_noise[:, 1] *= 1e3 * 20 / 65536
data_null[:, 1] *= 1e3 * 20 / 65536

# convert volts to degrees
avg_temp_degrees = 20.5 # average JIF lab temperature, from Bryan Barr
temp_scale = 10e-3 # V / degree, from LM35 datasheet
data_temperature[:, 1] *= 20 / 65536 # counts to volts
data_temperature[:, 1] = avg_temp_degrees + (data_temperature[:, 1] - data_temperature[:, 1].mean()) / temp_scale # volts to degrees

# average the temperature data to reduce the noise
n_moving_avg = 256
temperature_avg = np.convolve(data_temperature[:, 1], np.ones((n_moving_avg,)) / n_moving_avg, mode='same')

colours = lf.Colours()
colour_a = colours.next()
colour_b = colours.next()
colour_c = colours.next()

fig = plt.figure(figsize=lf.FIG_SIZE_A)

# make two y-axes
ax1 = plt.gca()
ax2 = ax1.twinx()

# select only one in five values to plot
select = 20
select_temperature = 20

plt1 = ax1.plot(data_noise[::select, 0], data_noise[::select, 1], color=colour_a, alpha=lf.ALPHA_LINE_A)
plt2 = ax1.plot(data_null[::select, 0], data_null[::select, 1], color=colour_b, alpha=lf.ALPHA_LINE_A)
plt3 = ax2.plot(data_temperature[::select_temperature, 0], temperature_avg[::select_temperature], color=colour_c, alpha=lf.ALPHA_LINE_A)

leg = ax2.legend(plt1 + plt2 + plt3, ['Op-amp noise', 'DAQ noise', 'Temperature'], bbox_to_anchor=(0.4, 0.9))
#leg.get_frame().set_alpha(0.75)

ax1.grid(True)

# labels
ax1.set_xlabel('Time [days]')
ax1.set_ylabel('Voltage [mV]')
ax2.set_ylabel(u'Temperature [°C]')

# limits
ax1.set_xlim((0, 16))
ax1.set_ylim([-8, 0])
ax2.set_ylim([21.5, 22.5])
ax2.set_yticks([21.5, 22.0, 22.5])
ax2.set_yticklabels(['21.5', '22.0', '22.5'])

plt.tight_layout()

plt.savefig(save_path)