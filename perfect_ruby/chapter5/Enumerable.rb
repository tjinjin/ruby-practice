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

# 元の配列を書く要素を変換して新しい配列を作る際に
['ruby', 'rails'].map {|str| str.upcase} # ["RUBY','RAILS']

# 要素の真偽を調べる
# すべての要素が真ならばtrueを返す
[true, true, true].all? # true
[false, true, true].all? # false

# すべての要素が偽ならばtrueを返す
[false, false, false].none? # true

# 1つでも真の要素があればtrueを返す
[true, true, false].any? # true
[false, false, false].any? # false

# 1つだけ真であればtrueを返す
[true, false, false].one? # true

# true, false以外も使える
['aaa', 'bbb', 'ccc'].all? # true

# ブロックを受け取ることができる
[4,4,2,3].all? {|v| v.is_a?(Integer)} # true
[4,4,'two'].all? {|v| v.is_a?(Integer)} # false

# 部分的な要素の取得
%w(Alice Bob Charlie).grep(/a/i) #["Alice", "Charlie"] /a/iにマッチする要素
['a','b',3,4].grep(String) # ["a", "b"]である要素

#あるオブジェクトのメソッド一覧から述語メソッドを取得する
object = Object.new
object.methods.grep(/\?/) # ni? :eql?, tailted?...

# 戻り値が最初に真になった要素を返す
array = [4,4,2,3]
array.detect {|v| v.even?} # 4

# ブロックの戻り値が真となった要素をすべて返す
array = [4,4,2,3]
array.select {|v| v.even? }
array.reject {|v| v.even? }
