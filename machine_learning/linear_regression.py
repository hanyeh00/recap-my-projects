#
"""

!unzip '/content/drive/MyDrive/1/archive.zip'
# -d path_to_directory

import numpy as np
import pandas as pd
from sklearn.preprocessing import MinMaxScaler
df=pd.read_csv('ex1data1.txt',header=None)
df.head()
# normalize data
scaler = MinMaxScaler()
 
data=pd.DataFrame(scaler.fit_transform(df),
            columns=df.columns) 
print(data)

#df=pd.read_csv('ex1data1.txt',header=None)
#df.head()
X = data.iloc[:, 0]# همه سطرهای ستون صفر

import seaborn as sns

sns.jointplot(x=data[0], y=data[1],edgecolor='r' )
# we want to predict y from x

import matplotlib.pyplot as plt
plt.scatter(df[0],df[1],edgecolors='r')

theta=[0,0]
theta

m = len(df)
alpha=0.2
X=data[0]
y=data[1]
epoch=200
y_predict=[]

def hypo(theta, X):
    return theta[0] + theta[1]*X
def cost_function(theta, X, y,m):
    return (1/2*m) * np.sum((hypo(theta, X) - y)**2)
def gradient_descent(theta, X, y, alpha):
    cost = []
   
    j=0
    for i in range(epoch):
      h_x = hypo(theta, X)
      theta[0] = theta[0]-(alpha*np.sum(h_x-y))/m # # # Derivative wrt m
      theta[1] = theta[1]-(alpha * np.sum(h_x - y)*X )/m
      cost=cost_function(theta, X, y,m)
     
    return theta, cost

theta1,_=gradient_descent(theta, X,y,alpha)
y_predict=hypo(theta1, X) 
y_predict

#plot
plt.scatter(X, y)
plt.plot([min(X), max(X)],[min(y_predict), max(y_predict)], color='orange') # predicted
plt.xlabel("input feature")
plt.ylabel("Original and Predicted Output")
plt.show()

max(y_predict)

