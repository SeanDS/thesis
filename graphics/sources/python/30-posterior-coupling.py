from __future__ import division

import os
import sys
import numpy as np
import csv
import matplotlib.pyplot as plt
import lookfeel as lf
from matplotlib.ticker import ScalarFormatter, FormatStrFormatter

class FixedOrderFormatter(ScalarFormatter):
    """Formats axis ticks using scientific notation with a constant order of 
    magnitude
    
    http://stackoverflow.com/questions/3677368/matplotlib-format-axis-offset-values-to-whole-numbers-or-specific-number
    """
    def __init__(self, order_of_mag=0, useOffset=True, useMathText=False):
        self._order_of_mag = order_of_mag
        ScalarFormatter.__init__(self, useOffset=useOffset, 
                                 useMathText=useMathText)
    def _set_orderOfMagnitude(self, range):
        """Over-riding this to avoid having orderOfMagnitude reset elsewhere"""
        self.orderOfMagnitude = self._order_of_mag

data_path = os.path.join(os.path.dirname(__file__), '..', '..', '..', 'data', '30-posterior-coupling.csv')

f = open(data_path)
data = np.array([map(float, item) for item in csv.reader(f)])
f.close()

# colour wheel
colours = lf.Colours()

fig = plt.figure(figsize=lf.FIG_SIZE_A)
ax = plt.gca()

# normalise y-axis
data[:, 1] /= np.max(data[:, 1])

ax.plot(
  data[:, 0], data[:, 1],
  lw=2,
  zorder=4,
  color=colours.next()
)

# increment colour to get rid of it
colours.next()

# 3rd standard deviation
stddev = 0.94

# index 5 is where positive values start (< 0 is unphysical, an artifact from model)
total = sum(data[0:, 1])
current = 0

for i in range(0, len(data[:, 0])):
  current = sum(data[0 : i, 1])
  
  proportion = current / total
  
  if proportion >= stddev:
    #print "Coupling limit: {0} (proportion: {1})".format(data[i, 0], proportion)
    #print "Mean: {0}".format(numpy.mean(data[:, 0]))
    
    ax.fill_between(data[0 : i, 0], data[0 : i, 1], color=colours.next(), zorder=1, alpha=0.5)
    
    break

ax.grid(True)
ax.xaxis.set_major_formatter(FixedOrderFormatter(-5))
#ax.yaxis.set_major_formatter(FixedOrderFormatter(3))
ax.set_ylabel('Normalised probability density')
ax.set_xlabel('Transverse to longitudinal coupling [m / m]')
ax.set_ylim([0, 1])
ax.set_xlim([0, max(data[:, 0])])

plt.savefig(sys.argv[1], format="PDF")
#pl.show()