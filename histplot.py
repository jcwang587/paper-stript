import pandas as pd
import matplotlib.pyplot as plt
import scipy.stats as st

# import matplotlib.pyplot as plt

data = pd.read_csv('LSPR band of sandwich SERS probes.csv')
plt.style.use('seaborn-white')
plt.hist(data, bins=4)
plt.show()
print(st.t.interval(0.95, len(data) - 1, loc=data.mean(), scale=st.sem(data)))
