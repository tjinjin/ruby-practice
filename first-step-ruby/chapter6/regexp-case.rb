value ="3"

case value
when '0'
when /\A\d\Z/
  puts '1'
when /\A\d{2}\Z/
  puts '2'
end
