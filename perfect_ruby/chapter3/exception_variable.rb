returned =
  begin
    value = 'return value'

    raise
  rescue
    value
  ensure
    'this is not return value' # 戻り値にはならない
  end

puts returned
