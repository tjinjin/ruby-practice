# Objectには比較演算子は定義されていないので、自分で定義する必要がある。
# そんなときにComparableを利用すると比較的カンタンに利用できるようになる
class Ruler
  include Comparable

  attr_accessor :length

  def initialize(len)
    self.length = len
  end

  def <=>(other)
    # lengthの比較結果を返す
    length <=> other.length
  end
end

short = Ruler.new(30) # 短い定規
long = Ruler.new(100) # 長い定規

short < long # true
short > long # false
short <= short # true
short >= short # true
short == long # false
short != long # true


