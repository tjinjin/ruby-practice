File.open("file.rb", "r+b"){|f|
  print "#{f.pos}:"
  print f.gets
  print "#{f.pos}"
  puts bytes = f.read(3)
  f.seek(-1, File::SEEK_END)
  print "#{f.pos}"
  puts f.getc
  p f.getc
  print "#{f.pos}"
  puts f.readchar # EOFError 読み取るバイトが存在しなくなった
}

__END__
File#posは現在の場所を保持している
