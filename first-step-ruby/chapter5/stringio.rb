require 'stringio'

buffer = String.new
sio = StringIO.new(buffer)
$stderr = $stdout = sio
puts "untuh" # 標準出力
warn "outed" # 標準エラー
$stdout = STDOUT # 標準出力を復元
puts buffer
