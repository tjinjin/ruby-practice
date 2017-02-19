File.open("file.rb"){|f|
  f.each_line do |line|
    print "#{f.lineno}: #{line}"
  end
}
