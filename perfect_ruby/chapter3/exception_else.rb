begin
  File.open('exception.rb')
rescue SystemCallError
  puts 'what happen??'
else
  puts 'succeed'
end
