# ブロックを使わずにファイルの書き込みする
file = File.open('without_block.txt','w')
file.puts 'without block'
# 自分で閉じないといけない
file.close


File.open 'without_block.txt', 'w' do |file|
  file.puts 'with block'
end
