# ゼロかどうか
0.zero? # trun
3.zero? # false
# nozeroはnilかselfを返す
0.nonzero? # nil
3.nonzero? # 3

# どんな種類の数値か
356.integer? # true
3.6.integer? # false
3.real? # true
# Complexは複素数
Complex(1, 2).real? # false

# 算術演算
1 + 1 # 2
1 - 1 # 0
2 * 2 # 4
10 /3 # 3
10 % 3 # 1
10 ** 2 # 100

10.0 / 3 # 3.3333333333333335
10 / 3.0 # 3.3333333333333335

# 比較演算
123 == 123 # true
123 != 123 # false
123 > 123 # false
123 >= 123
123 < 123
123 <= 123
123 == 123.0 # true

# 宇宙演算子（スペースシップ演算子）
# ソートのために使われる
# 左辺＜右辺は負の数（−１）、等しいなら0、左辺＞右辺なら正の数（１）
1 <=> 2 # -1
1 <=> 1 # 0
1 <= > 0 # 1

%w(Alice Bob Charile).sort{|a, b|
  a.length <=> b.length
}

# 丸め操作
## round 四捨五入
1.4.round # 1
1.5.round # 2
-1.5.round # -2

## ceil 自身と等しいか、自身より大きい整数のうち最小のものを返す
1.4.ceil # 2
1.1.ceil #2
-1.4.ceil # -1
-1.1.ceil # -1

##  floor 自身と等しいか、自身より小さい整数のうち最大のものを返す
1.5.floor # 1
-1.4.floor #-2

## truncate 自身と0の間で、自身に最も近い整数を返す
1.5.truncate # 1
-1.5.truncate # -1

# 繰り返し処理
3.step 5 do |num|
  puts num
end

## 1.2 1.4 1.6 1.8 2.0と表示
1.2.step 2.0, 0.2 do |num|
  puts num
end


