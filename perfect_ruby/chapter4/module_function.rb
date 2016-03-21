# モジュール関数とは「privateなインスタンスメソッドであると同時に
# モジュールの特異メソッドでもある」メソッドのこと
#
#モジュールから直接呼び出す
p Math.sqrt(4)

# includeして使う
include Math
p sqrt(4)

# モジュールに定義したメソッドをモジュール関数にする
module MyFunctions
  def my_module_function
    puts 'Called'
  end
  module_function :my_module_function
end

# 複数のモジュール関数を定義する例

module MyFunctions
  module_function

  def my_first_function
    puts 'first'
  end

  def my_second_function
    puts 'second'
  end
end
