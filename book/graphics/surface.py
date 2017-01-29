from mpl_toolkits.mplot3d import Axes3D
import matplotlib.pyplot as plt
from matplotlib import cm
from matplotlib.ticker import LinearLocator, FormatStrFormatter
import numpy as np
from scipy.io import loadmat

fig = plt.figure(figsize=(64, 48))
ax = fig.gca(projection='3d')

data = loadmat('data.mat')

# Make data.
X = data['lSchnupp']
Y = data['srcLengths']
X, Y = np.meshgrid(X, Y)
Z = data['results_new']

# Plot the surface.
surf = ax.plot_surface(X, Y, Z, cmap=cm.viridis, rstride=1, cstride=1,
                       linewidth=0.3, antialiased=True)

ax.set_xticklabels([])
ax.set_yticklabels([])
ax.set_zticklabels([])

ax.view_init(elev=45, azim=225)

# hack the grid in the background
ax.xaxis._axinfo["grid"].update({"color" : "black"})
ax.yaxis._axinfo["grid"].update({"color" : "black"})
ax.zaxis._axinfo["grid"].update({"color" : "black"})

ax.spines['left'].set_visible(False)
ax.spines['right'].set_visible(False)
ax.spines['top'].set_visible(False)
ax.spines['bottom'].set_visible(False)

fig.tight_layout()

#plt.show()
plt.savefig('plot.png', transparent=True)