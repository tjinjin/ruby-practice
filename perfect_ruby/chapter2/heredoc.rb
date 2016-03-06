# 式展開可能
str = <<EOS
#{aaa}
#{bbb}
EOS

# 終端をインデント可能
str = <<-EOS
#{aaa}
#{bbb}
  EOS

# 式展開できない
str = <<'EOS'
#{aaa}
#{bbb}
EOS
