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
data_path = os.path.join(os.path.dirname(__file__), '..', '..', '..', 'data', '50-etm-suspension-tfs.csv')

# load data
data = np.genfromtxt(data_path, delimiter=',', skip_header=1, dtype=complex)

# figure
fig = plt.figure(figsize=lf.FIG_SIZE_A)

ax1 = fig.add_subplot(211)
ax2 = fig.add_subplot(212, sharex=ax1)

# colour wheel
colours = lf.Colours()

colour_a = colours.next()
colour_b = colours.next()

# plot magnitude
ax1.loglog(data[:, 0], np.absolute(data[:, 1]), color=colour_a, alpha=lf.ALPHA_LINE_A)
ax1.loglog(data[:, 0], np.absolute(data[:, 2]), color=colour_b, alpha=lf.ALPHA_LINE_A)

# plot phase
ax2.semilogx(data[:, 0], np.angle(data[:, 1]) * 180 / np.pi, color=colour_a, alpha=lf.ALPHA_LINE_A)
ax2.semilogx(data[:, 0], np.angle(data[:, 2]) * 180 / np.pi, color=colour_b, alpha=lf.ALPHA_LINE_A)

ax1.set_ylabel('Magnitude')
ax2.set_xlabel('Frequency [Hz]')
ax2.set_ylabel(u'Phase [°]')

#ax1.set_xlim([1e0, 1e4])
#ax1.set_ylim([1e-2, 1e1])
#ax2.set_ylim([-180, 180])

# set y-labels for phase
#ax2.set_yticks([-180, -135, -90, -45, 0, 45, 90, 135, 180])

ax1.grid(True)
ax2.grid(True)

# override legend padding
#with plt.rc_context({'legend.borderaxespad': 0.5}):
ax1.legend(['ESD', 'Coil'], loc='upper right')

plt.tight_layout()

plt.savefig(save_path)