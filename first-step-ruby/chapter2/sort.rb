array = %w(73 2 5 1999 53)
p array.sort
# sortで複数ブロックを渡すと比較になるっぽい
p array.sort{|x, y| x.to_i <=> y.to_i}
