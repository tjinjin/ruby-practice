begin
  file = File.open('aaa')

  do_process
rescue
  puts '何かが起きた'
ensure
  file.close if file
  puts 'ファイルを閉じた'
end
