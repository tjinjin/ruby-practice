stone = 'ruby'

case stone
when /ruby/
  puts 'July'
when /peridot|sardonyx/
  puts 'August'
else
  puts %q(i don't no)
end
