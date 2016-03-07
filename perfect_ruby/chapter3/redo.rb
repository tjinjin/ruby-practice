language = %w(Java Ruby Scala)

language.each do |lang|
  puts lang
  if lang == 'Ruby'
    puts 'I found Ruby'
    #もう一度同じ処理を呼び出す
    redo
  end
end
