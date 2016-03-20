class MyClass
  DEFAULT_VALUE = '4423'
end

# 定数は::で参照できる
p MyClass::DEFAULT_VALUE

class MyClass2
  def initialize
    puts 'initializing'
  end
end

my_object = MyClass2.new
p my_object
