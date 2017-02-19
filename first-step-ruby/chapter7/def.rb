def sum(x, y)
  x + y
end
def diff x, y
  x - y
end
def prod(x, y) x * y end
def quo x, y; x / y end

p sum(1, 2)
p diff(1, 2)
p prod(1, 2)
p quo(1, 2)

# 階乗計算
def fact(n)
  return 1 if n == 0
  product = 1
  (1..n).each do |i|
    product *= i
  end
  return product # returnなくても同じ意味になる
end
p fact(1)
p fact(4)
