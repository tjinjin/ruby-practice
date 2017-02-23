# freezeすることで定義の変更を禁止できる
Fixnum.freeze
class Fixnum
  def+(rhs); return 5 end
end
