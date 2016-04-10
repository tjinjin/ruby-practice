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

array = [1,2,3,4,5]

# 先頭から任意の数の要素を配列として返す
array.take(3) # 1,2,3
# 先頭から任意の数の要素をsikipして配列として返す
array.drop(3) # 4,5

# ブロックが最初の偽を返すまで要素の配列を返す
array.take_while{|n| n < 3 } # 1,2
array.drop_while{|n| n < 3 } # 3,4,5

# 畳込み演算
[4, 4, 2, 3].inject(0) {|result, num|
  result + num
} # 13
# 初期値を指定しない。先頭の要素が初期値として使用され2番目以降の要素が繰り返される
[4, 4, 2, 3].inject {|result, num|
  result + num
} # 13

# 繰り返しの度に呼び出すメソッドをシンボルで受け取ることもできる
[4,4,2,3].inject(:+) #13

# 繰り返しとオブジェクトの更新
# Enumerable#each_with_objectは要素を繰り返しながら1つのオブジェクトを更新していく
# 配列、文字列、ハッシュなどを初期値に指定する
%w(Alice Bob Charlie).each_with_object({}) {|name, result|
  result[name] = name.length
} # Alice =>5, Bob=>3,

# 要素のグルーピング
## 整数と浮動小数の配列
array = [1,2.0,3.0,4]

array.group_by {|val| val.class } # => {Fixnum=>[1, 4], Float=>[2.0, 3.0]}
array.partition {|n| n.even? } # => [[2, 4], [1, 3, 5]]

# 最小値と最大値
range = (1..10)
range.max # =>10
range.min # => 1
range.minmax # [1,10]
# 自分で最小・最大の基準を指定
people = %w(Alice Bob Charlie)
people.min_by {|s| s.length} # bob
people.max_by {|s| s.length} # Charlie
people.minmax_by {|s| s.length} # ["Bob", "Charlie"]

# sort
people = %w(Bob Alice Charlie)
# 要素でソート
people.sort
# 要素の長さで
people.sort {|a, b| a.length <=> b.length }
people.sort_by {|name| name.length }
### sort/sort_byは安定なソートでないので、比較結果が同じソートは実行によって順番が変わる可能性がある

# EnumerableでincludeされているArray
# 第一引数に配列の長さ、第二引数に要素を指定
Array.new(5, 1) # [1,1,1,1,1]

# すべての要素は同じオブジェクト。一つに破壊的操作をするとすべてに影響する
array = Array.new(3, 'naive')
array[0].reverse!
array # ["evian", "evian","evian]

Array.new(3) {|index| index.succ} # [1,2,3]

array = [4,4,2,3]

array.length
array.empty? # false
[].empty? # true
array.include?(4) # true

# 演算子メソッド
[1,2,3] + [4,5] # [1,2,3,4,5]
#要素を取り除く
[4,4,2,3] - [4,3] # 2
# 共通の要素からなる配列
[1,2,3] & [2,3,4] # [2,3]
# n回繰り返した配列
[1,2,3] * 2 # [1,2,3,1,2,3]

# 要素の取得
array = [4,4,2,3]

# 添字参照
array[2] # 2
# 開始位置と長さ、添字を範囲指定できる
array[2.2] # [2,3]
array[2..4] # [2,3]

# 複数の添字の要素を配列で返す
array = [4,4,2,3]
array.values_at(1)   # [4]
array.values_at(1,3) # [4,3]

# 先頭・末尾の要素を得る
array.first # 4
# 先頭からn個
array.first(2) # [4,4]
# 末尾
array.last #3
# 末尾からn個取得
array.last(2) # [2,3]

# ランダムな要素を返す
array.sample # 3
array.samplt(2) # => [3,4]

# 配列から特定のキーをもつ要素を返す
ary = [[:foo, 4], [:bar, 2], [:baz, 3]]
ary.assoc(:bar) # [:bar,2]

# 要素の追加と削除
array = [4,4,2,3]

# 0番目の位置に代入
array[0] = 5
array # => [5,4,2,3]
# 配列の要素数を超える場合はnil埋めされる
array[10] = 1
array # [5,4,2,3,nil,nil,nil,nil,nil,nil,1]

# 末尾に追加
array = [4,4,2]
array << 3 # [4,4,2,3]
array.push 3 # [4,4,2,3,3]
# 取り出す
array.pop # 3
array # [4,4,2,3]

# 先頭に要素の追加、取り出し
array = [4,4,2,3]
array.shift # 4
array # [4,2,3]
array.unshift 4 # [4,4,2,3]
