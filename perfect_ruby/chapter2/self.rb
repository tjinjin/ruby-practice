class Ruler
  attr_accessor :length

  def display_length
    # Ruler#lengthの戻り値を出力している
    puts length
  end
end

ruler = Ruler.new
ruler.length = 30

ruler.display_length
