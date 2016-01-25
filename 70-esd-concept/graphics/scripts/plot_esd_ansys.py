import sys
import numpy as np
import matplotlib.pyplot as plt

# first argument should be save path
save_path = sys.argv[1]
# second argument should be data path
data_path = sys.argv[2]

# load
data = np.genfromtxt(data_path, delimiter=',', skip_header=1)

# plot
plt.plot(data[:, 0], data[:, 1])
plt.savefig(save_path)