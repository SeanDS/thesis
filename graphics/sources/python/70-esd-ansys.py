import os
import sys
import numpy as np
import scipy.stats as stats
import matplotlib.pyplot as plt
import lookfeel as lf

# first argument should be save path
save_path = sys.argv[1]

# data path
data_path = os.path.join(os.path.dirname(__file__), '..', '..', '..', 'data', 'generated', 'from-python', '70-esd-ansys.csv')

# load
data = np.genfromtxt(data_path, delimiter=',', skip_header=1)

# fit
gradient, intercept, _, _, _ = stats.linregress(data[:, 0], data[:, 6])

# fit x-axis
fitx = xrange(600, 800, 10)

fig = plt.figure(figsize=lf.FIG_SIZE_A)

ax1 = plt.gca()

# colour wheel
colours = lf.Colours()

# plot
ax1.plot(data[:, 0], data[:, 4], 'x', color=colours.next(), alpha=lf.ALPHA_LINE_A)
ax1.plot(data[:, 0], data[:, 5], '+', color=colours.next(), alpha=lf.ALPHA_LINE_A)
ax1.plot(data[:, 0], data[:, 6], 'x', color=colours.next(), alpha=lf.ALPHA_LINE_A)
ax1.plot(fitx, fitx * gradient + intercept, '--', color=colours.current(), alpha=0.8)

# enforce log tick labels
ax1.yaxis.get_major_formatter().set_powerlimits((0, 0))

ax1.set_xlabel('Voltage [V]')
ax1.set_ylabel('Force [N]')

ax1.legend(['Force in x-direction', 'Force in y-direction', 'Force in z-direction', 'Fit for force in z-direction\n(gradient = {:.2f} nN/V)'.format(gradient * 1e9)])

ax1.set_xticks(xrange(650, 751, 10))

ax1.grid(True)

ax1.set_xlim([640, 760])
ax1.set_ylim([-1.6e-6, 0.5e-7])

plt.savefig(save_path)