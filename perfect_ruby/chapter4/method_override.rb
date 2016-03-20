class Parent
  def greet
    puts 'Hi'
  end
end

class Child < Parent
  def greet(name) # Parent#greetをオーバーライド
    puts "Hi, #{name}"
  end
end

parent = Parent.new
parent.greet # "Hi"と表示

child = Child.new
child.greet('ruby')
#child.greet # ArgumentError

class GrandChild < Child
  def greet(name)
    super # 引数は自動的に渡される

    puts "Nice to meet you"
  end
end

grandchild = GrandChild.new
grandchild.greet 'ruby' # ChildのgreetとGrandChildとgreetが実行される
