book_to_author = {
  "Ruby in Nutshell" => "Flangan",
  "Programing Ruby" => "Thomas",
  "AWDwR" => "Thomas"
}
p book_to_author
p book_to_author["Programing Ruby"]
p book_to_author["Programing Perl"]
book_to_author["Ruby in Nutshell"] = ["Flagan","Matz"]
p book_to_author
book_to_author["The Ruby Way"] = "Fulton"
p book_to_author

book_to_author.each do |book, author|
  puts "#{book} by #{author}"
end
