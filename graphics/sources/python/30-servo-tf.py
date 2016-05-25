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
data_path_temperature = os.path.join(os.path.dirname(__file__), '..', '..', '..', 'data', '30-temperature-servo-tf.txt')
data_path_pzt = os.path.join(os.path.dirname(__file__), '..', '..', '..', 'data', '30-pzt-servo-tf.csv')

# load data
data_temperature = np.genfromtxt(data_path_temperature)
data_pzt = np.genfromtxt(data_path_pzt, delimiter=',')

# adjust temperature feedback DC gain
temperature_dc_gain = 10000
data_temperature[:, 1] *= temperature_dc_gain

fig = plt.figure(figsize=lf.FIG_SIZE_A)

ax1 = fig.add_subplot(211)
ax2 = fig.add_subplot(212, sharex=ax1)

# colour wheel
colours = lf.Colours()
colour_a = colours.next()
colour_b = colours.next()
colour_c = colours.next()

# only plot up to 12 Hz in temperature
temperature_threshold = 12
temperature_indices = np.where(data_temperature[:, 0] <= temperature_threshold)[0]

# plot magnitude
a1 = ax1.loglog(data_temperature[temperature_indices, 0], data_temperature[temperature_indices, 1], '-', color=colour_a, alpha=lf.ALPHA_LINE_A)
a2 = ax1.loglog(data_pzt[:, 0], data_pzt[:, 1], '-', color=colour_b, alpha=lf.ALPHA_LINE_A)

# add point representing measurement frequency
a3 = ax1.vlines(70, 1e-2, 1e5, colors=colour_c, linestyles='dashed', zorder=2)

# plot phase
ax2.semilogx(data_temperature[temperature_indices, 0], data_temperature[temperature_indices, 2], '-', color=colour_a, alpha=lf.ALPHA_LINE_A)
ax2.semilogx(data_pzt[:, 0], data_pzt[:, 2], '-', color=colour_b, alpha=lf.ALPHA_LINE_A)
ax2.vlines(70, -300, 300, colors=colour_c, linestyles='dashed', zorder=2)

ax1.set_ylabel('Magnitude')
ax2.set_xlabel('Frequency [Hz]')
ax2.set_ylabel(u'Phase [°]')

#ax1.set_xlim([1e0, 1e4])
#ax1.set_ylim([1e-2, 1e1])
#ax2.set_ylim([0, 225])

ax1.legend(['Laser temperature gain', 'Laser PZT gain', 'Measurement frequency'], loc='lower left')

# set y-labels for phase
ax2.set_ylim([-200, 200])
ax2.set_yticks([-180, -135, -90, -45, 0, 45, 90, 135, 180])

ax1.grid(True)
ax2.grid(True)

plt.tight_layout()

plt.savefig(save_path)