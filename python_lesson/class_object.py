import time

start_time = time.time()

class Human():
    count=0
    def __init__(self,name,age):
        self.name=name
        self.age=age
        #print(name,self.age)
    def get_age(self):
        print("your age is %s" %(self.age))


class Student(Human):
    def __init__(self):
        print(Human.count + 1)

new_object=Human("Hanieh",33)
new_object.get_age()
second_object=Student()
time.sleep(3)
print('%s seconds' % (time.time() - start_time))
