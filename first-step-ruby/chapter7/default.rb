def some_method(a, b, c = 1)
  return a, b, c
end

p some_method(1,2)
p some_method(1,2,nil)

def print_time(time = Time.now)
  p time
end

print_time
sleep 1
print_time
