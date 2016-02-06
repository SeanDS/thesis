import sys
import numpy as np
import matplotlib.pyplot as plt
import lookfeel as lf

# save path
save_path = sys.argv[1]

# individual factors data
data_path = sys.argv[2]

# load noise CSV data
noise_data = np.genfromtxt(data_path, delimiter=',', skip_header=1)

# colour wheel
colours = lf.Colours()

# figure and axis
fig = plt.figure(figsize=lf.FIG_SIZE_A)
ax = plt.gca()

with plt.rc_context({'lines.markersize': 5, 'lines.markeredgewidth': 2}):
    ax.semilogx(noise_data[:, 0], noise_data[:, 2], '-o', color=colours.next())
    ax.semilogx(noise_data[:, 0], noise_data[:, 3], '--', color=colours.next())

#ax.set_xlim([-0.05, 0.05])
ax.set_ylim([0, 15e-22])
ax.grid(True)
ax.set_ylabel('Cavity length change\n[m / rad]')
legend1 = ax.legend(['ETM Rotation', 'Total 1', 'Total 2', 'Total 3', 'WGM 1', 'WGM 2', 'WGM 3'])

fig.tight_layout()

plt.savefig(save_path, format="PDF")
#plt.show()