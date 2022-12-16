def increment_x():
    num = 0
    while (num < 3):
        yield num*num
        num += 1


class_generator = increment_x()
for i in class_generator:
    print(i)

print('%s seconds' % (time.time_ns() - start_time))
