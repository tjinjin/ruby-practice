# puts/print/printfは受け取った引数が文字列出ない場合、to_sメソッドの
# 戻り値を出力する
# 一方pはinspectメソッドの戻り値を出力する
#
class Ruler
  def initialize(length)
    @length = length
  end

  def to_s
    '='* @length # これなんだっけ？ -> 掛け算してるだけだった
  end

  def inspect
    "Ruler(length: #{@length})"
  end
end

ruler = Ruler.new(30)

# 自信を文字列として表示
puts ruler #

# デバッグ表示
p ruler
