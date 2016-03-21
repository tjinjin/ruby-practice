class Ruler
  attr_accessor :length

  def initialize(length)
    self.length = length
  end

  # !=をオーバーライドしていない
  # !=は==の結果の論理否定を返すので、整合性は保たれる
  def ==(other)
    length == other.length
  end
end

r1 = Ruler.new(30)
r2 = Ruler.new(30)

#同じ長さ
p r1 == r2
p r1 != r2

# 違う長さ
r2.length = 40
p r1 == r2
p r1 != r2
