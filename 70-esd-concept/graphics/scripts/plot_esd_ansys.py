import sys
import numpy as np
import scipy.stats as stats
import matplotlib
import matplotlib.pyplot as plt
import lookfeel as lf

# first argument should be save path
save_path = sys.argv[1]
# second argument should be data path
data_path = sys.argv[2]

# load
data = np.genfromtxt(data_path, delimiter=',', skip_header=1)

# fit
gradient, intercept, _, _, _ = stats.linregress(data[:, 0], data[:, 3])

# fit x-axis
fitx = xrange(600, 800, 10)

fig = plt.figure(figsize=lf.FIG_SIZE_A)

ax1 = plt.gca()

# colour wheel
colours = lf.Colours()

# plot
ax1.plot(data[:, 0], data[:, 1], 'bx', ms=lf.MS_A, mew=lf.MEW_A, color=colours.next(), alpha=lf.ALPHA_LINE_A)
ax1.plot(data[:, 0], data[:, 2], 'r+', ms=lf.MS_A, mew=lf.MEW_A, color=colours.next(), alpha=lf.ALPHA_LINE_A)
ax1.plot(data[:, 0], data[:, 3], 'gx', ms=lf.MS_A, mew=lf.MEW_A, color=colours.next(), alpha=lf.ALPHA_LINE_A)
ax1.plot(fitx, fitx * gradient + intercept, '--', color=colours.current(), alpha=0.8)

ax1.set_xlabel('Voltage [V]')
ax1.set_ylabel('Force [N]')

ax1.legend(['Force in x-direction', 'Force in y-direction', 'Force in z-direction', 'Fit for force in z-direction'], borderaxespad=lf.BORDER_AXIS_PAD)

ax1.set_xticks(xrange(650, 751, 10))

ax1.grid(True)

ax1.set_xlim([640, 760])
ax1.set_ylim([-2.5e-7, 0.1e-7])

plt.savefig(save_path)