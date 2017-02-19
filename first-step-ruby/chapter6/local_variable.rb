def next_of(origin)
  value = origin + 1
  p value
end

def prev_of(origin)
  value = origin - 1
  p value
end

next_of(2)
next_of(2)
prev_of(2)
p value              # NameError
p undefined_variable # NameError
