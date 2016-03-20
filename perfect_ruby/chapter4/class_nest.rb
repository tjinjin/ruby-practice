# ネストしたクラスには継承関係はない
class My
  class SweetClass
  end
end

p My.new
p My::SweetClass.new

class My::GreatClass
end
