import sys
import numpy as np
import scipy.stats as stats
import matplotlib.pyplot as plt
import lookfeel as lf

# first argument should be save path
save_path = sys.argv[1]

# figure and axis
fig = plt.figure(figsize=lf.FIG_SIZE_A)
ax = plt.gca()

# turn off y-axis graphics
ax.tick_params(
    axis='y',
    which='both',
    left='off',
    labelleft='off')

# turn off all spines except lower x
ax.spines['left'].set_visible(False)
ax.spines['right'].set_visible(False)
ax.spines['top'].set_visible(False)

# colour wheel
colours = lf.Colours()

# get colours
c1 = colours.next() # carrier
c2 = colours.next() # sidebands

# arrow arguments
args = {'width': lf.ARROW_WIDTH, 'head_width': lf.ARROW_HEAD_WIDTH, 'head_length': lf.ARROW_HEAD_LENGTH, 'overhang': lf.ARROW_OVERHANG}

# plot
ax.arrow(-1, 0, 0, 3, color=c2, **args)
ax.arrow(0, 0, 0, 10, color=c1, **args)
ax.arrow(1, 0, 0, 3, color=c2, **args)

ax.set_xticks([-1, 0, 1])
ax.set_xticklabels(['-fmod', 'carrier', '+fmod'])

ax.set_xlabel('Frequency')
ax.set_ylabel('Amplitude')

ax.grid(True)

ax.set_xlim([-1.3, 1.3])
ax.set_ylim([0, 11])

plt.savefig(save_path)