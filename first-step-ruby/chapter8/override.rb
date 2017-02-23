class Fixnum
  alias original_addition # 元の定義を別名で退避
  def +(rhs)
    # 一つ進めるかな？
    original_addition(rhs).succ
  end
end

p 1+1
p 5+2
