import sys
import os
import scipy.io
import numpy as np
import csv

# Writes a CSV file containing the data in second and third arguments to the path specified as the first argument.

# Data produced by Christian Graef for the Glasgow Sagnac Speedmeter Experiment
# (group members see https://arran.physics.gla.ac.uk/wp/speedmeter/?p=4507)

# save path
path = sys.argv[1]

# voltages taken from https://arran.physics.gla.ac.uk/wp/speedmeter/wp-content/uploads/sites/3/2015/08/voltage_force_10mm_by_5mm_mirror_20mm_plate_separation_06-Aug-2015.png
voltages = xrange(650, 751, 10)

# load MAT files
mat_itm = scipy.io.loadmat(os.path.join(os.path.dirname(__file__), '..', '..', '70-itm.mat'))
mat_etm = scipy.io.loadmat(os.path.join(os.path.dirname(__file__), '..', '..', '70-etm.mat'))

# extract data
data = np.asarray([voltages]).T
data = np.hstack([data, mat_itm['forcelist'][:, 0:3]])
data = np.hstack([data, mat_etm['forcelist'][:, 0:3]])

# write CSV
with open(path, "wb") as csv_file:
    writer = csv.writer(csv_file)
    
    # headers
    writer.writerow(['Voltage [V]', 'ITM Force X [N]', 'ITM Force Y [N]', 'ITM Force Z [N]', 'ETM Force X [N]', 'ETM Force Y [N]', 'ETM Force Z [N]'])
    
    # data
    for row in zip(data):
        writer.writerow(*row)