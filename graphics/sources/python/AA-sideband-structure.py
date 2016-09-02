from __future__ import division

import sys
import numpy as np
import scipy.signal
import matplotlib.pyplot as plt
import lookfeel as lf

# first argument should be save path
save_path = sys.argv[1]

# figure and axis
fig = plt.figure(figsize=lf.FIG_SIZE_A)
ax = plt.gca()

# turn off y-axis graphics
#ax.tick_params(
#    axis='both',
#    which='both',
#    left='off',
#    labelleft='off',
#    right='off',
#    labelright='off',
#    top='off',
#    labeltop='off')

# turn off all spines except lower x
ax.spines['left'].set_visible(False)
ax.spines['right'].set_visible(False)
ax.spines['top'].set_visible(False)

# colour wheel
colours = lf.Colours()

# get colours
c1 = colours.next() # carrier
c2 = colours.next() # phase modulation sidebands
c3 = colours.next() # amplitude modulation sidebands

# arrow arguments
args = {'width': lf.ARROW_WIDTH, 'head_width': lf.ARROW_HEAD_WIDTH, 'head_length': lf.ARROW_HEAD_LENGTH, 'overhang': lf.ARROW_OVERHANG, 'length_includes_head': True}

# amplitude modulation
def am(E_0, omega_0, t, m, omega):
  return [E_0 * np.exp(1j * omega_0 * t) * (m / 2) * np.exp(1j * omega * t), E_0 * np.exp(1j * omega_0 * t), E_0 * np.exp(1j * omega_0 * t) * (m / 2) * np.exp(-1j * omega * t)]

# phase modulation
def pm(E_0, omega_0, t, m, omega, n):
  
  # ith Bessel coefficient
  def ji(E_0, omega_0, t, m, omega, i):
    return 1j ** i * np.i0(m) * np.exp(1j * i * omega * t)
  
  # return list of coefficients up to nth, multiplied by carrier
  return E_0 * np.exp(1j * omega_0 * t) * [ji(E_0, omega_0, t, m, omega, ii) for ii in xrange(i)]

E_0 = 1
c_0 = 3e8
lambda_0 = 1064e-9
omega_0 = 2 * np.pi * c_0 / lambda_0
t = np.linspace(0, 1e-5, 100000)
m = 0.1
omega = 10e6

am_fields = am(E_0, omega_0, t, m, omega)
#[f, p_am] = scipy.signal.welch(sum(am_fields), fs=1/(t[1]-t[0]), window='hann', nperseg=10000)

ax.plot(t, np.abs(am_fields[0]))
#ax.semilogy(f, p_am)
#ax.plot(t, am_fields[1])
#ax.plot(t, am_fields[2], '--')
#ax.set_xlim([0, 3e-14])
plt.show()

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

#plt.savefig(save_path)