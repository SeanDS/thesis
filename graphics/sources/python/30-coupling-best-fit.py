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
ax1.semilogy(
  real[0, :], real[1, :] / rotation, '*', color=colour_d, lw=2,
  markersize=5, zorder=4)
ax1.errorbar(x=real[0, :], y=real[1, :] / rotation, xerr=xerror, fmt=None, lw=1.5, zorder=3, ecolor=colour_e)

ax1.grid(True)
ax1.set_ylabel('Cavity length change [m / rad]')
legend1 = ax1.legend(['Model, 1:27600', 'Model, 1:17000', 'Model, no coupling', 'Measurements'], loc='lower left')
ax1.set_xlim([-0.0225, 0.0225])

ax2.plot(simulated[:, 0], simulated[:, 4], '-', color=colour_a, lw=2)
ax2.plot(simulated[:, 0], simulated[:, 5], '-', color=colour_b, lw=2)
ax2.plot(simulated[:, 0], simulated[:, 6], '-', color=colour_c, lw=2)
ax2.plot(
  real[0, :], real[2, :], '*', color=colour_d, lw=2, markersize=5,
  zorder=4)

# yerrors, from calculate_snr.m.
yerrors = [-3.2303,0.1721,-0.0342,0.0254,-2.0603,0.2178,-0.0336,0.0283,3.2726,0.1387,-0.0385,0.0188]

ax2.errorbar(x=real[0, :], y=real[2, :], xerr=xerror, yerr=yerrors, fmt=None, lw=1.5, zorder=3, ecolor=colour_e)
ax2.grid(True)
ax2.set_xlabel('Spot position on ETM [m]')
ax2.set_ylabel(u'Phase [\xb0]')
ax2.set_ylim([-20, 200])

fig.tight_layout()

plt.savefig(sys.argv[1], format="PDF", bbox_extra_artists=(legend1,), bbox_inches='tight')