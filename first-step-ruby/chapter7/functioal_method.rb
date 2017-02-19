# レシーバの情報を利用しないメソッドを関数的メソッドという
# レシーバは存在している。
# 数学関数や組み込み関数も関数的メソッドの一部

def functional_method(a, b)
  return [a, b, a+b]
end

p functional_method(1, 2)
