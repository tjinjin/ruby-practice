class Foo
  @@class_variable = "foo"
  def print
    p @@class_variable
  end
end
## ここで呼べばfooのまま
foo1 = Foo.new
foo1.print
class Bar < Foo
  # この次点で barになっている
  p @@class_variable
  @@class_variable = "bar"
  def print
    p @@class_variable
  end
end

foo = Foo.new
foo.print
bar = Bar.new
bar.print
