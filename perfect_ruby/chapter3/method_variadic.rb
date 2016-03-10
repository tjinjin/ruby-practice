def greet(name, *messages)
  messages.each do |message|
    puts "#{message}, #{name}"
  end
end

greet 'Ruby','Hello','konnichiwa'

# 引数を無視したい場合
def greet(name, *)
  puts "Hello, #{name}."
end

greet 'Ruby', 'konnichiwa','foo'
