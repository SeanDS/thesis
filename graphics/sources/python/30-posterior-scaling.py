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

data_path = os.path.join(os.path.dirname(__file__), '..', '..', '..', 'data', '30-posterior-scaling.csv')

f = open(data_path)
scaling = np.array([map(float, item) for item in csv.reader(f)])
f.close()

# colour wheel
colours = lf.Colours()

fig = plt.figure(figsize=lf.FIG_SIZE_A)
ax = plt.gca()

ax.plot(scaling[:, 0], scaling[:, 1], color=colours.next(), lw=2)

ax.grid(True)

ax.xaxis.set_major_formatter(FixedOrderFormatter(-3))
ax.xaxis.set_major_formatter(FixedOrderFormatter(-4))

ax.set_xlabel('Scale Factor')
ax.set_ylabel('Probability Density [arb. units]')

fig.tight_layout()

plt.savefig(sys.argv[1], format="PDF")#, bbox_extra_artists=(legend1,), bbox_inches='tight')