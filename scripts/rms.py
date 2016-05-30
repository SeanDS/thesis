import numpy as np

def calculate_rms(f, asd):
  if f.size != asd.size:
    raise Exception('Specified f and asd arguments don\'t have the same size')

  # length
  length = f.shape[0]

  # create results vector
  rms = np.zeros(f.shape)
  
  # set the RMS at the end of the vector
  rms[-1] = asd[-1]

  # loop over each frequency, summing the RMS
  for i in xrange(length - 2, -1, -1):
    delta_f = f[i + 1] - f[i]
    
    rms[i] = np.sqrt(np.power(rms[i + 1], 2) + delta_f * np.power(asd[i], 2))
  
  return rms