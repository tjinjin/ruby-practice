language = %w(Perl Python Ruby)
i = language.length - 1

until i < 0
  puts "Hello #{language[i]}"
  i -= 1
end
