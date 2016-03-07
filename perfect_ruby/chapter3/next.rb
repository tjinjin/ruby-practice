language = %w(Java Ruby Scala)

language.each do |lang|
  puts lang
  next unless lang == 'Ruby'
  puts 'I found Ruby' # nextが呼ばれない時だけ実行される
end
