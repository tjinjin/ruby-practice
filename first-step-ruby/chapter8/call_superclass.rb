class Duration
  def initialize(since, till)
    @since = since
    @until = till
  end
  attr_accessor :since, :until # getter/setter
  # $>は標準出力って意味かな
  def display(target=$>)
    super # super(target)と同じ、Object#displayを呼び出している？
    target.write "(#{self.since}-#{self.until})"
  end
end

duration = Duration.new(Time.now, Time.now + 3600)
duration.display
