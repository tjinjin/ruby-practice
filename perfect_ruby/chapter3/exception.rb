#raise 'error' # RuntimeError: error!
#raise StandardError, 'error!' # StandardError: error!
begin
  raise 'error' # 例外が発生する何か
rescue => e
  puts "Error occuerd!(#{e.class})"
  puts "#{e.message}"
  puts "#{e.backtrace}"
end
