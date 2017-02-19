File.open("time.log", 'a'){|f|
  f.puts Time.now
}

File.open("time-tiem.log", File::WRONLY|File::CREAT) {|f|
  f.puts Time.now
}
