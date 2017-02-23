class Duration
  # initializeは自動で呼ばれる
  def initialize(since, till)
    @since = since
    @until = till
  end
  attr_accessor :since, :until # getter/setter
end

class Duration
  def print_since; p @since end
end
duration1 = Duration.new(Time.now-7, Time.now)
duration2 = Duration.new(Time.now+7, Time.now+14)
duration1.print_since
duration2.print_since
