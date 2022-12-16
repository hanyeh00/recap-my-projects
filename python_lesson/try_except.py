import time

start_time = time.time()


try:
  f = open("demofile.txt")
  try:
    f.write("Lorum Ipsum")
  except:
    print("Something went wrong when writing to the file")
  finally:
    f.close()
except:
  print("Something went wrong when opening the file")
time.sleep(3)
print('%s seconds' % (time.time() - start_time))
