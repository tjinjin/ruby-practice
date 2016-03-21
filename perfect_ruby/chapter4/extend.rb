# モジュールに定義されたメソッドはオブジェクトの特異メソッドとして
# 取り込むこともできる
# またクラスもオブジェクトなのでextendできる

module Greetable
  def greet_to(name)
    puts "Hello, #{name}. I'm a #{self.class}"
  end
end

o = Object.new
o.extend Greetable

o.greet_to 'World'

module Greetable2
  def greet_to(name)
    puts "hello, #{name}"
  end
end

# クラスにGreetable2モジュールを取り込んでいる
class Alice
  extend Greetable2
end

Alice.greet_to 'World'
