import pandas as pd
import numpy as np
data = np.array(['f','l','i','n','t','e','r','s'])
df = pd.read_csv(r'/Users/admin/Documents/PYTHON CLASS/HR Employee Attrition 2.csv')
df.rename(columns = {'EmployeeNumber': 'EmployeeID'}, inplace = True)  
first_column = df.pop('EmployeeID')
df.insert(0, 'EmployeeID', first_column)
df = df.drop(labels='Over18', axis=1)
df = df.drop(labels='StandardHours', axis=1)
df = df.reset_index(drop=True)
df.info()
df.head()
df.to_csv('project.csv',index=False)
