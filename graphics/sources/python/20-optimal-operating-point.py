from __future__ import division

import sys
import numpy as np
import matplotlib.pyplot as plt
import lookfeel as lf

# first argument should be save path
save_path = sys.argv[1]

# fringe properties
lambda0 = 1064e-9
A0 = 1
k = 2 * np.pi / lambda0
dx = np.linspace(-lambda0/2, lambda0/2, 1000)

A = np.power(A0, 2) / 2 * (1 + np.exp(-2j * (k * dx + np.pi/2)))

fig = plt.figure(figsize=lf.FIG_SIZE_B)

ax1 = plt.gca()

# colour wheel
colours = lf.Colours()

# plot
ax1.plot(dx, A, color=colours.next(), alpha=lf.ALPHA_LINE_A)
ax1.plot(dx, -0.25-1/(lambda0/6)*dx, '--', color=colours.next(), alpha=lf.ALPHA_LINE_A)
ax1.hlines(0, dx.min(), dx.max(), colors=colours.next(), alpha=lf.ALPHA_LINE_A, linestyles='dashed')

ax1.set_xlabel(r'x mod $\lambda$ (m)')
ax1.set_ylabel('Normalised\nphotodetector power')

ax1.legend(['Measured power', 'Best response', 'Best SNR'], loc='lower right', framealpha=lf.default_settings['legend.framealpha'])

plt.xticks([-lambda0/4, 0, lambda0/4], [r'$\frac{-\lambda}{4}$', r'$0$', r'$\frac{\lambda}{4}$'])
ax1.set_xlim([-lambda0/4, lambda0/4])
ax1.set_ylim([-0.05, 1])

ax1.grid(True)

plt.tight_layout()
#plt.show()
plt.savefig(save_path)