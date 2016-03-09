catch(:foo) {
  throw :foo, 'returned value'
} # => 'returned value'

# throwの第二引数にcatchの戻り値を渡すことができる
