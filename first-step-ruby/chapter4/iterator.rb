"str".each_byte do |byte|
  p byte
end

story = <<EOS
aaa
bbb
ccc
EOS

story.each_line do |line|
  print line
end
