=begin
## public
どこからでも呼び出し可能

## protected
そのクラスまたはサブクラスのインスタンスメソッドのみ

## private
レシーバ省略形式でしか呼び出せない。よってselfに対してしか呼び出せない

=end
# トップレベルはprivate
def private
end

class Yapoo
  def public_method
  end

  private
  def internal_use
  end

  def public_api
    return internal_use
  end

  public :public_api # public_apiをpublicに
end

yapoo = Yapoo.new
yapoo.public_api
yapoo.internal_use
