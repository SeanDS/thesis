# -*- coding: utf-8 -*-
from __future__ import division

import os
import sys
import numpy as np
import csv
import matplotlib.pyplot as plt
import lookfeel as lf
from matplotlib.ticker import ScalarFormatter, FormatStrFormatter

xerror = 1e-3
rotation = 0.249394807755423e-7

data_path_1 = os.path.join(os.path.dirname(__file__), '..', '..', '..', 'data', '30-coupling-best-fit-measurements.csv')
data_path_2 = os.path.join(os.path.dirname(__file__), '..', '..', '..', 'data', '30-coupling-best-fit-simulations.csv')

f = open(data_path_1)
real = np.array([map(float, item) for item in csv.reader(f)])
f.close()

f = open(data_path_2)
simulated = np.array([map(float, item) for item in csv.reader(f)])
f.close()

# colour wheel
colours = lf.Colours()

colour_a = colours.next()
colour_b = colours.next()
colour_c = colours.next()
colour_d = colours.next()
colour_e = colours.next()

fig, (ax1, ax2) = plt.subplots(2, 1, sharex=True, figsize=lf.FIG_SIZE_A_TALL)

ax1.semilogy(simulated[:, 0], simulated[:, 1] / rotation, '-', color=colour_a, lw=2)
ax1.semilogy(simulated[:, 0], simulated[:, 2] / rotation, '-', color=colour_b, lw=2)
ax1.semilogy(simulated[:, 0], simulated[:, 3] / rotation, '-', color=colour_c, lw=2)
with plt.rc_context({'lines.markersize': 2, 'lines.markeredgewidth': 2}):
    ax1.semilogy(
        real[0, :], real[1, :] / rotation, '.', color=colour_d, zorder=4)
with plt.rc_context({'lines.markersize': 1, 'lines.markeredgewidth': 1}):
    ax1.errorbar(x=real[0, :], y=real[1, :] / rotation, xerr=xerror, fmt=None, zorder=3, ecolor=colour_e)

ax1.grid(True)
ax1.set_ylabel(r'Cavity length change $\left(\frac{\SI{}{\meter}}{\SI{}{\radian}}\right)$')
legend1 = ax1.legend(['Model, 1:27600', 'Model, 1:17000', 'Model, no coupling', 'Measurements'], loc='lower left')
ax1.set_xlim([-0.0225, 0.0225])

ax2.plot(simulated[:, 0], simulated[:, 4], '-', color=colour_a, lw=2)
ax2.plot(simulated[:, 0], simulated[:, 5], '-', color=colour_b, lw=2)
ax2.plot(simulated[:, 0], simulated[:, 6], '-', color=colour_c, lw=2)
with plt.rc_context({'lines.markersize': 2, 'lines.markeredgewidth': 2}):
    ax2.plot(
        real[0, :], real[2, :], '.', color=colour_d, zorder=4)

with plt.rc_context({'lines.markersize': 1, 'lines.markeredgewidth': 1}):
    ax2.errorbar(x=real[0, :], y=real[2, :], xerr=xerror, fmt=None, zorder=3, ecolor=colour_e)
ax2.grid(True)
ax2.set_xlabel(r'Spot position on ETM $\left(\SI{}{\meter}\right)$')
ax2.set_ylabel(r'Phase $\left(\SI{}{\degree}\right)$')
ax2.set_ylim([-20, 200])

fig.tight_layout()

plt.savefig(sys.argv[1], bbox_extra_artists=(legend1,), bbox_inches='tight')