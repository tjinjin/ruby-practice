class Parent

  PARENT = 'constant in parent'

  def initialize
    @ivar = 'content'
  end
end

class Child < Parent
end

# サブクラスのインスタンスでもスーパークラスと同様のインスタンス変数が定義される
p Parent.new
p Child.new
# 定数も継承
p Child::PARENT
