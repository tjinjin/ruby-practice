def greet
  puts 'local'
end

greet
puts 'hi'

# メソッド取り消し
undef greet, puts

greet # NameError
puts 'hi' # NoMethodError
