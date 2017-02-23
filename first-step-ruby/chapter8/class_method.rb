class Duration
  # class名をつけるとclassメソッドに
  def Duration.print(x); p x end
end
Duration.print 1

class Duration2
  def self.print(x); p x end
end
Duration2.print 1

# クラスメソッドはClassオブジェクトの特異メソッドである！
class Duration # 再オープン
  def initialize(since, till)
    @since = since
    @until = till
  end
  attr_accessor :since, :until # getter/setter

  # クラスメソッドかつ特異メソッド
  def self.a_week_from(from)
    return self.new(from, from+7*24*60*60)
  end
end
p Duration.a_week_from(Time.now)
