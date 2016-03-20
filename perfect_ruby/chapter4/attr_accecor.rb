# インスタンス変数と
# 代入Ruler#length=
# 参照Ruler#length
# が作成される
class Ruler
  attr_accessor :length, :width
end

ruler = Ruler.new
ruler.length
ruler.length = 30
ruler.width
ruler.width = 10

# インスタンス変数を変更するだけはattr_writer
# 逆に参照するだけはattr_readerを使う
