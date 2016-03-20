class Parent
  @@val = 'foo' # クラス定義内で定義

  def self.say
    puts @@val # クラス・メソッドから参照
  end
end

class Child < Parent
  def say
    puts @@val # サブクラスのインスタンスメソッドから参照
  end
end

Parent.say
Child.say
Child.new.say
