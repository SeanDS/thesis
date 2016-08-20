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
ax1 = plt.gca()

with plt.rc_context({'lines.markersize': 5, 'lines.markeredgewidth': 2}):
    ax1.semilogx(noise_data[:, 0], noise_data[:, 2], '-o', color=colours.next())
    ax1.semilogx(noise_data[:, 0], noise_data[:, 3], '--', color=colours.next())
    
    ax1.vlines(0.0000043, 0, 15e-22, colors=colours.next(), linestyles='dashed', zorder=2)

ax1.set_ylim([0, 15e-22])
ax1.grid(True)
ax1.set_xlabel('Transmissivity')
ax1.set_ylabel('Displacement noise (m / sqrt(Hz))')
legend1 = ax1.legend(['Dielectric coating stack', 'Grating', 'Advanced LIGO ETM'])

fig.tight_layout()

plt.savefig(save_path, format="PDF")
#plt.show()