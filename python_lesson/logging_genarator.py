#logging module introduction
#exercise
#credit--> link text(https://github.com/ostad-ai/Python-Everything)

import logging
FORMAT='%(asctime)s - %(levelname)s - %(message)s'
#%(asctime)s.%(msecs)03d %(levelname)s %(module)s - %(funcName)s: %(message)s',
  
logging.basicConfig(format=FORMAT,datefmt='%Y.%m.%d %H:%M:%S', level=logging.INFO,force=True)
logger=logging.getLogger('MyLog')
logger.setLevel(logging.INFO)
logger.info('starting.....')
logger.warning('it is an important warning')
logger.info('finished!')
logger.error('Game_over')

#//+++++++++++++++++++++++++++++++++++++++++

print("Hello %(name1)s, my name is %(name2)s" )
name1='Jhon'
name2='a'
print("Hello %s, my name is %s"%(name1,name2) )


#//    ----- --------

import logging
FORMAT='%(asctime)s - %(levelname)s - %(message)s'
#%(asctime)s.%(msecs)03d %(levelname)s %(module)s - %(funcName)s: %(message)s',
  
logging.basicConfig(format=FORMAT,datefmt='%Y.%m.%d %H:%M:%S', level=logging.INFO,force=True)
logger=logging.getLogger('MyLog')
logger.setLevel(logging.INFO)

#---------------------------------------------

class Multiply():
  
  def __init__(self):
    self.z=0
    
  def multiply_sequentialy(self,x,y):
    self.num1=x
    self.num2=y
    self.z=self.num1*self.num2
    if self.z==0:
      logger.warning("multiple would be zero")
    #print(self.z)
    yield self.z
    
    #%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
c=Multiply()
c.multiply_sequentialy(1,0)
print(next(c.multiply_sequentialy(0,4)))
