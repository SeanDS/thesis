import os
import sys
import numpy as np
import matplotlib.pyplot as plt
import lookfeel as lf

# save path
save_path = sys.argv[1]

# data path
data_path = os.path.join(os.path.dirname(__file__), '..', '..', '..', 'data', '30-magnet-offset.csv')

# load CSV data
data = np.genfromtxt(data_path, delimiter=',', skip_header=4)

# convert y values from mass to force
data[:, 1] *= 9.81

# convert x values to mm
data[:, 0] *= 1e3

# fit
fit = np.poly1d(np.polyfit(data[:, 0], data[:, 1], 2))

# fit data
fit_y = fit(data[:, 0])

# subtract central value of fit x-axis
data[:, 0] -= data[np.argmax(fit_y), 0]

# subtract central force
data[:, 1] -= max(fit_y)
fit_y -= max(fit_y)

# colour wheel
colours = lf.Colours()

# figure and axis
fig = plt.figure(figsize=lf.FIG_SIZE_A)
ax = plt.gca()

with plt.rc_context({'lines.markersize': 5, 'lines.markeredgewidth': 2}):
    ax.plot(data[:, 0], data[:, 1], 'x', color=colours.next())
    ax.plot(data[:, 0], fit_y, '-', color=colours.next())

ax.set_xlim([-6.5, 6.5])
ax.set_ylim([-0.5, 0.2])
ax.grid(True)
ax.set_xlabel('Displacement relative to position of maximum force [mm]')
ax.set_ylabel('Force relative to maximum [N]')
ax.legend(['Measurements', 'Quadratic fit'], loc='lower left')

fig.tight_layout()

plt.savefig(save_path, format="PDF")
#plt.show()