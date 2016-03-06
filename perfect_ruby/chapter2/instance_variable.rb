class Ruler

  # インスタンス変数への代入
  def length=(val)
    @length = val
  end

  def length
    @length
  end

=begin
  本来であれば上のメソッドは不要。attr_accessorを定義すれば自動で作成される
  class Ruler
    attr_accessor :length
  end
=end
end

ruler = Ruler.new

ruler.length = 30
puts ruler.length
