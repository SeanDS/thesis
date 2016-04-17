import os
import sys
import numpy as np
import scipy.stats as stats
import matplotlib.pyplot as plt
import lookfeel as lf

# save path
save_path = sys.argv[1]

# individual factors data
data_path = os.path.join(os.path.dirname(__file__), '..', '..', '..', 'data', '30-individual-factors.csv')

# load curve CSV data
curves = np.genfromtxt(data_path, delimiter=',', skip_header=1)

# rotation angle used to generate this data (see plot_individual_factors.m)
rotation = 1e-7

# number representing jump in index for signal_vector_alt
selector = 200;

# create subplot
fig, (ax1, ax2) = plt.subplots(2, 1, sharex=True, figsize=lf.FIG_SIZE_A)

# colour wheel
colours = lf.Colours()

# colours
c0 = 'k' # force black
c1 = colours.next()
c2 = colours.next()
c3 = colours.next()

ax1.semilogy(curves[:, 0], curves[:, 1] / rotation, '--', color=c0, zorder=3)
ax1.semilogy(curves[:, 0], curves[:, 3] / rotation, '-', color=c1, zorder=3)
ax1.semilogy(curves[:, 0], curves[:, 4] / rotation, '-', color=c2, zorder=3)
ax1.semilogy(curves[:, 0], curves[:, 5] / rotation, '-', color=c3, zorder=3)
ax1.hlines(5e-9  / rotation, curves[:, 0].min(), curves[:, 0].max(), colors=c1, linestyles='dashed', zorder=2)
ax1.hlines(5e-10 / rotation, curves[:, 0].min(), curves[:, 0].max(), colors=c2, linestyles='dashed', zorder=2)
ax1.hlines(5e-11 / rotation, curves[:, 0].min(), curves[:, 0].max(), colors=c3, linestyles='dashed', zorder=2)

ax1.set_xlim([-0.05, 0.05])
ax1.set_ylim([1e-4, 1e-1])
ax1.grid(True)
ax1.set_ylabel('Cavity length change\n[m / rad]')
legend1 = ax1.legend(['ETM Rotation', 'Total 1', 'Total 2', 'Total 3', 'WGM 1', 'WGM 2', 'WGM 3'], bbox_to_anchor=(1.37, 1.065))

ax2.plot(curves[:, 0], curves[:, 2], '--', color=c0, zorder=3)
ax2.plot(curves[:, 0], curves[:, 6], '-', color=c1, zorder=3)
ax2.plot(curves[:, 0], curves[:, 7], '-', color=c2, zorder=3)
ax2.plot(curves[:, 0], curves[:, 8], '-', color=c3, zorder=3)

ax2.set_ylim([-20, 200])
ax2.grid(True)
ax2.set_xlabel('Position of spot with respect to ETM\'s centre of rotation [m]')
ax2.set_ylabel(u'Phase [\xb0]')
legend2 = ax2.legend(['ETM Rotation', 'Total 1', 'Total 2', 'Total 3'], bbox_to_anchor=(1.37, 0.85))

#fig.tight_layout()

plt.savefig(save_path, format="PDF", bbox_extra_artists=(legend1, legend2), bbox_inches='tight')
#plt.show()