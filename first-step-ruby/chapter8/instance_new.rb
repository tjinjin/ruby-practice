class Duration
  # initializeは自動で呼ばれる
  def initialize(since, till)
    @since = since
    @until = till
  end
  attr_accessor :since, :until # getter/setter
end

duration = Duration.new(Time.now, Time.now + 3600)
# 動きとしてはuntilメソッドを呼んで、属性を返している
p duration.until
# since= というメソッドを呼んでる？
p duration.since = Time.now # 属性の設定
