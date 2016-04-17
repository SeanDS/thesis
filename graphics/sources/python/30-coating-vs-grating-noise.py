import os
import sys
import numpy as np
import matplotlib.pyplot as plt
import lookfeel as lf

# save path
save_path = sys.argv[1]

# data path
data_path = os.path.join(os.path.dirname(__file__), '..', '..', '..', 'data', '30-coating-vs-grating-noise.csv')

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

ax.set_ylim([0, 15e-22])
ax.grid(True)
ax.set_ylabel('Displacement noise [m / sqrt(Hz)]')
legend1 = ax.legend(['Dielectric coating stack', 'Grating'])

fig.tight_layout()

plt.savefig(save_path, format="PDF")
#plt.show()