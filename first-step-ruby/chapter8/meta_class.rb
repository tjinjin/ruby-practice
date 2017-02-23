class Duration
  # class名をつけるとclassメソッドに
  def Duration.print(x); p x end

  def initialize(since, till)
    @since = since
    @until = till
  end
  attr_accessor :since, :until # getter/setter
end

class Duration
  # 特異クラスを用いてクラスメソッドを定義する流儀
  class << self
    def a_week_from(from)
      return self.new(from, from+7*24*60*60)
    end
  end
end

p Duration.a_week_from(Time.now)
p Duration.a_week_from(Time.now)
