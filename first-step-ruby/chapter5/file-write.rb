File.open("tmp", 'w'){|f|
  $stdout = f # 標準出力を変更
  puts "Welcome to Glubdubdrib"
  $stdout = STDOUT # 標準出力を元に戻す
}
