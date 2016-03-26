# Integerは整数を示すクラス
# Fixnum/Bignumというサブクラスを持つ。
100.class # Fixnum
10000000000000000000.class # Bignum

# 偶数か奇数か
1.odd? # true
2.even? # true

# 前後の値
2.next # 3
2.succ # 3
2.pred # 1

# 0除算は例外に
1 / 0 # ZeroDivisionError: divided by 0

# 整数の変換
## 文字列に
30.to_s # "30"
30.to_s(2) # "11110"
30.to_s(8) # "36"
30.to_s(16) # "1e"

## charに
(65..70).map {|n| n.chr} # ["A", "B", "C", "D", "E", "F"]
256.chr # RangeError: 256 out of char range
255.chr # "\xFF"

## 整数への変換
'123'.to_i # 123
Time.now.to_i

## 整数以外のオブジェクトを整数に変換するにはKernel.#Integerも使える
Integer('4423') # 4423
Integer('0xFF') # 255
Integer(3.14)   # 3
Integer(nil)    # TypeError
Integer('abc')  # ArgumentError

## 繰り返し
## 1 2 3
1.upto 3 do |num|
  puts num
end

## 3 2 1
3.downto 1 do |num|
  puts num
end

3.times do |num|
  puts num
end
