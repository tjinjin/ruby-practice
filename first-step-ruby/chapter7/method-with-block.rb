verse = "aaa bbbb \n ccc dddd\n"
count = 0
verse.each_line do |line|
  print line
  count += 1
end
