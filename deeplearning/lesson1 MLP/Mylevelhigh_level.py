import torch
import torch.nn as nn
torch.manual_seed(12)
x=torch.randn(10,3)
y=torch.randn(10,2)

#model

fc=nn.Linear(3,2,True,device="cpu")
print("w=",fc.weight)
print("b",fc.bias)
loss_function=nn.MSELoss()
optimiser=torch.optim.SGD(params=fc.parameters(),lr=0.01)
y_ores=fc(x)
loss_val=loss_function(y,y_ores)
print("loss=",loss_val.item())
loss_val.backward()
optimiser.step()
print(fc.weight)

#loss_value=Mse