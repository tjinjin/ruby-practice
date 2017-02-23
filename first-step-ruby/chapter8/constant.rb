class Duration
  DAYS_OF_WEEK = 7 # Duration内の定数
  p DAYS_OF_WEEK

  def print_days_of_week
    p DAYS_OF_WEEK # インスタンスメソッドで参照可能
  end
end
p Duration::DAYS_OF_WEEK # 外部から参照可能
