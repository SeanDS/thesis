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
data_path = os.path.join(os.path.dirname(__file__), '..', '..', '..', 'data', 'generated', 'from-matlab', '50-mirror-tfs.csv')

# number of headers
n_headers = 1

# data delimiter
delimiter = ','

# load data
data = np.genfromtxt(data_path, delimiter=delimiter, skip_header=n_headers, dtype=complex)

# figure
fig = plt.figure(figsize=lf.FIG_SIZE_A)

ax1 = fig.add_subplot(211)
ax2 = fig.add_subplot(212, sharex=ax1)

# colour wheel
colours = lf.Colours()

colour_a = colours.next()
colour_b = colours.next()
colour_c = colours.next()
colour_d = colours.next()
colour_e = colours.next()
colour_f = colours.next()

# {'M2a to BHD', 'M2b to BHD', 'DARM to BHD', ...
# 'M6 to BHD', 'M7 to BHD', 'M9 to BHD', 'M2a to PDH_A', ...
# 'M2b to PDH_B', 'DARM to PDH', 'M6 to PDH_A', 'M6 to PDH_B', ...
# 'M7 to PDH_A', 'M7 to PDH_B', 'M9 to PDH_A', 'M9 to PDH_B'};

# plot magnitude
ax1.loglog(data[:, 0], np.absolute(data[:, 3]), '-', color=colour_c, alpha=lf.ALPHA_LINE_A)
ax1.loglog(data[:, 0], np.absolute(data[:, 4]), '-', color=colour_d, alpha=lf.ALPHA_LINE_A)
ax1.loglog(data[:, 0], np.absolute(data[:, 5]), '--', color=colour_e, alpha=lf.ALPHA_LINE_A)
ax1.loglog(data[:, 0], np.absolute(data[:, 6]), '--', color=colour_f, alpha=lf.ALPHA_LINE_A)

# plot phase
ax2.semilogx(data[:, 0], np.angle(data[:, 3]) * 180 / np.pi, '-', color=colour_c, alpha=lf.ALPHA_LINE_A)
ax2.semilogx(data[:, 0], np.angle(data[:, 4]) * 180 / np.pi, '-', color=colour_d, alpha=lf.ALPHA_LINE_A)
ax2.semilogx(data[:, 0], np.angle(data[:, 5]) * 180 / np.pi, '--', color=colour_e, alpha=lf.ALPHA_LINE_A)
ax2.semilogx(data[:, 0], np.angle(data[:, 6]) * 180 / np.pi, '--', color=colour_f, alpha=lf.ALPHA_LINE_A)

ax1.set_ylabel('Magnitude')
ax2.set_xlabel('Frequency [Hz]')
ax2.set_ylabel(u'Phase [°]')

#ax1.set_xlim([1e0, 1e4])
#ax1.set_ylim([1e-2, 1e1])
#ax2.set_ylim([-180, 180])

ax1.set_yticks([1e-2, 1e0, 1e2, 1e4, 1e6, 1e8, 1e10, 1e12])

# set y-labels for phase
ax2.set_yticks([-180, -135, -90, -45, 0, 45, 90, 135, 180])

ax1.grid(True)
ax2.grid(True)

# override legend padding
#with plt.rc_context({'legend.borderaxespad': 0.5}):
ax1.legend([r'$L_{(-)}$ to BHD', r'$M_6$ to BHD', r'$M_7$ to BHD', r'$M_{I}$ to BHD'], loc='lower left')

plt.tight_layout()

plt.savefig(save_path)