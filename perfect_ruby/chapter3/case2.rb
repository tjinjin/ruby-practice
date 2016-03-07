stone = 'aa'

case
when stone == 'ruby'
  puts 'July'
when stone == 'peridot' || stone == 'sardonyx'
  puts 'August'
else
  puts %q(i don't no)
end
