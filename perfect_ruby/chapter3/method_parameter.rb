=begin
仮引数
関数定義時に使用される引数

実引数
関数呼び出し時に渡される引数

=end

def greet(name, message = 'Hi')
  "#{message},#{name}."
end

p greet "Ruby"
p greet "Ruby", 'hello'
p greet "Ruby", nil

def greet(name, message = 'Hi',suffix = '.')
  "#{message},#{name + suffix}"
end

p greet "Ruby"
p greet "Ruby", 'hello'
p greet "Ruby", 'hello',':)'
# 途中の引数を省略できない
p greet "Ruby",":)"

def greet(name, message = 'Hi',suffix)
  puts "#{message}, #{name}#{suffix}"
end

# 省略可能な仮引数の後に、省略可能でない仮引数をとることは可能
greet 'ruby','.'
