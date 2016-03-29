# 文字ごとの繰り返し
'AAA'.each_char {|c| print "#{c}--" } # A--A--A--

# バイト毎の繰り返し
'る'.each_byte do |byte|
  puts byte
end # 220 130 139と表示

# 1行毎の繰り返し
# 改行はデフォルトでは$/が指定されている
"Alice\nBob\nCharlrie".each_line do |line|
  puts line
end # Alice Bob Charlrie

# ,を改行
"Alice,Bob,charlrie".each_line(',') do |line|
  puts line
end
