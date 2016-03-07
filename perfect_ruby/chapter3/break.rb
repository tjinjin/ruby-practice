language = %w(Java Ruby Scala)

language.each do |lang|
  puts lang

  if lang == 'Ruby'
    puts 'I love Ruby'
    break
  end
end
