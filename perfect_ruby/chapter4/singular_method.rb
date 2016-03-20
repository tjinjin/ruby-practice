# オブジェクト固有のメソッド
class Foo
end

foo = Foo.new
bar = Foo.new

# barだけのメソッドを定義する
def bar.singleton_method
  puts 'Called!'
end

# singleton_methodはbarに対してだけ呼べる
bar.singleton_method # 'Called'
foo.singleton_method # No MethodError
