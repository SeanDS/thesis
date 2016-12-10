# -*- coding: utf-8 -*-
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

data_path_scaling = os.path.join(os.path.dirname(__file__), '..', '..', '..', 'data', '30-posterior-scaling.csv')
data_path_stddev = os.path.join(os.path.dirname(__file__), '..', '..', '..', 'data', '30-posterior-stddev.csv')

with open(data_path_scaling) as f:
  scaling = np.array([map(float, item) for item in csv.reader(f)])

with open(data_path_stddev) as f:
  stddev = np.array([map(float, item) for item in csv.reader(f)])

# colour wheel
colours = lf.Colours()
colour_a = colours.next()

fig = plt.figure(figsize=lf.FIG_SIZE_A_SM)

ax1 = fig.add_subplot(121)
ax2 = fig.add_subplot(122, sharey=ax1)

ax1.plot(scaling[:, 0], scaling[:, 1] / np.max(scaling[:, 1]), color=colour_a)
ax2.plot(stddev[:, 0], stddev[:, 1] / np.max(stddev[:, 1]), color=colour_a)

ax1.grid(True)
ax2.grid(True)

ax1.xaxis.set_major_formatter(FixedOrderFormatter(-3))
#ax1.xaxis.set_major_formatter(FixedOrderFormatter(-4))
ax2.xaxis.set_major_formatter(FixedOrderFormatter(-4))

ax1.set_xlabel('Scale factor')
ax1.set_ylabel('Normalised probability density')
ax2.set_xlabel('Spot movement\nstandard deviation ' r'$\left(\SI{}{\meter}\right)$')

# switch off top plot y tick labels, as shared by left plot
ax2.tick_params(axis='y', labelleft='off')

fig.tight_layout()

plt.savefig(sys.argv[1])#, bbox_extra_artists=(legend1,), bbox_inches='tight')