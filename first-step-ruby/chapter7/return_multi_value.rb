def some_method(a)
  return a, 1, 2, 3
end

a, b, *c = some_method(7)
p a
p b
p c

def some_method(a)
  [a, 4, 5, 6]
end


a, b, *c = some_method(7)
p a
p b
p c
