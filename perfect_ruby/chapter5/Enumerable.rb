# Enumerableのメソッドを使うとオブジェクトの集まりを自在に操ることができる
# 繰り返し処理を使った新たなオブジェクト生成、条件によるフィルタリング、並び替えなど…

# 繰り返し処理
# 繰り返しのたびにインクリメントされる値と一緒に繰り返す
%w(Alice Bob Charlie).each_with_index do |name, index|
  puts "#{index}: #{name}"
end # 0: Alice 1: Bob 2: Charlieと順番に表示

# 末尾から逆順に繰り返す
(1..3).reverse_each do |val|
  puts val
end # 3 2 1

# 要素をn個ずつ区切って繰り返す
(1..5).each_slice 2 do |a, b|
  p [a, b]
end # [1, 2],[3,4]...と表示

# n個の連続した要素を1つずつずらしながら繰り返す
(1..4).each_cons 2 do |a, b|
  p [a, b]
end # [1,2] [2,3] [3,4]と表示


# succ（次の文字列を返す)がないオブジェクトでは繰り返しできない
(0.0..1.0).each do |f|
  puts f
end # TypeError

# レシーバの要素を先頭から末尾まで繰り返し、それを永遠に繰り返す
(1..3).cycle do |n|
  puts n
end
end
#Floatではsuccを呼び出せない
0.0.succ # NoMethod
