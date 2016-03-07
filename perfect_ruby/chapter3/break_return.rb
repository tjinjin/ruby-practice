language = %w(Java Ruby Scala)

language.each do |lang|
  puts lang

  if lang == 'Ruby'
    break 'I love Ruby'
  end
end
