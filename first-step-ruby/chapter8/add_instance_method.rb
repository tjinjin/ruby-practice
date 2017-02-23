class String
  # カエサル運動を施すメソッドを追加
  def caesar; tr 'a-zA-Z', 'n-za-mN-ZA-M' end
end

puts "Lerning Ruby".caesar
