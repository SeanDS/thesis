from __future__ import division

import sys
import os
import numpy as np
import matplotlib.pyplot as plt
import lookfeel as lf

# first argument should be save path
save_path = sys.argv[1]

# data paths
data_path_local = os.path.join(os.path.dirname(__file__), '..', '..', '..', 'data', '80-epics-aliasing-local.csv')
data_path_remote = os.path.join(os.path.dirname(__file__), '..', '..', '..', 'data', '80-epics-aliasing-remote.csv')

# load data
data_local = np.genfromtxt(data_path_local, delimiter=',', skip_header=1)
data_remote = np.genfromtxt(data_path_remote, delimiter=',', skip_header=1)

# synchronise data: subtract first time from the rest of each time vector (so they both start from zero)
data_local[:, 0] -= data_local[0, 0]
data_remote[:, 0] -= data_remote[0, 0]

# add an offset to one to bring them in sync
data_remote[:, 0] -= 16.847

# further remove an offset from both to bring the start of the sine wave injection to zero (the data was recorded with a "burn-in" period of flat signal before and after)
sine_start_time = 0
data_local[:, 0] -= sine_start_time
data_remote[:, 0] -= sine_start_time

fig = plt.figure(figsize=lf.FIG_SIZE_A)

ax = plt.gca()

# colour wheel
colours = lf.Colours()

# plot
ax.plot(data_local[:, 0], data_local[:, 1], '-', color=colours.next(), alpha=lf.ALPHA_LINE_A)

# get rid of next colour
colours.next()

ax.plot(data_remote[:, 0], data_remote[:, 1], '--', color=colours.next(), alpha=lf.ALPHA_LINE_A)

ax.set_xlabel('Time [s]')
ax.set_ylabel('Signal [arbitrary units]')

ax.legend(['Recorded locally', 'Recorded by frame builder'], loc='upper right')

ax.grid(True)

ax.set_xlim([0, 1.35])

plt.tight_layout()

plt.savefig(save_path)