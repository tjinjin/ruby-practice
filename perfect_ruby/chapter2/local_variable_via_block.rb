greeting = "Hello"
people = %w(Alice Bob)

people.each do |person|
  puts greeting + person
end

puts person # Nameerror
