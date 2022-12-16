import time
my_number=[1,2,3,4,5,6,7,8,10,12,11,14,15,16]
y=[1,0,1,1,1,0,0,0]
start_time = time.time()
z=list(filter(lambda r:r%2==0, my_number))
z2=list(map(lambda r:r*2,range(2,10)))
print(z)
print(z2)
print('%s seconds' % (time.time() - start_time))
#//_____________________________________________
