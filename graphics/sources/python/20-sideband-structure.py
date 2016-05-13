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
    axis='both',
    which='both',
    left='off',
    labelleft='off',
    right='off',
    labelright='off',
    top='off',
    labeltop='off')

# turn off all spines except lower x
ax.spines['left'].set_visible(False)
ax.spines['right'].set_visible(False)
ax.spines['top'].set_visible(False)

# colour wheel
colours = lf.Colours()

# get colours
c1 = colours.next() # carrier
c2 = colours.next() # phase modulation sidebands
colours.next()
c3 = colours.next() # amplitude modulation sidebands

# arrow arguments
args = {'width': lf.ARROW_WIDTH, 'head_width': lf.ARROW_HEAD_WIDTH, 'head_length': lf.ARROW_HEAD_LENGTH, 'overhang': lf.ARROW_OVERHANG, 'length_includes_head': True}

## plot carrier
p1 = ax.arrow(0, 0, 0, 15, color=c1, **args)

## plot amplitude modulation sidebands
p2 = ax.arrow(-0.5, 0, 0, 8, color=c3, **args)
ax.arrow(0.5, 0, 0, 8, color=c3, **args)

## plot phase modulation sidebands
# first order
p3 = ax.arrow(-0.5, 0, 0, 5, color=c2, alpha=0.8, **args)
ax.arrow(0.5, 0, 0, 5, color=c2, alpha=0.8, **args)
# second order
ax.arrow(-0.6, 0, 0, 1.5, color=c2, alpha=0.8, **args)
ax.arrow(-0.4, 0, 0, 1.5, color=c2, alpha=0.8, **args)
ax.arrow(0.4, 0, 0, 1.5, color=c2, alpha=0.8, **args)
ax.arrow(0.6, 0, 0, 1.5, color=c2, alpha=0.8, **args)
# third order
ax.arrow(-0.65, 0, 0, 0.75, color=c2, alpha=0.8, **args)
ax.arrow(-0.55, 0, 0, 0.75, color=c2, alpha=0.8, **args)
ax.arrow(-0.45, 0, 0, 0.75, color=c2, alpha=0.8, **args)
ax.arrow(-0.35, 0, 0, 0.75, color=c2, alpha=0.8, **args)
ax.arrow(0.65, 0, 0, 0.75, color=c2, alpha=0.8, **args)
ax.arrow(0.55, 0, 0, 0.75, color=c2, alpha=0.8, **args)
ax.arrow(0.45, 0, 0, 0.75, color=c2, alpha=0.8, **args)
ax.arrow(0.35, 0, 0, 0.75, color=c2, alpha=0.8, **args)

ax.legend([p1, p2, p3], ['Carrier', 'AM sidebands', 'PM sidebands'])

ax.set_xticks([-0.5, 0, 0.5])
ax.set_xticklabels([r'$\omega_0-\omega$', r'$\omega_0$', r'$\omega_0+\omega$'])

ax.set_xlabel('Frequency')
ax.set_ylabel('Magnitude')

ax.grid(True)

ax.set_xlim([-1.3, 1.3])
ax.set_ylim([0, 16])

plt.savefig(save_path)