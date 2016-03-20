class Ruler
  attr_accessor :length

  # selfを付けることでクラスメソッドになる
  def self.pair
    [new, new]
  end
end

# 2つのRulerオブジェクトを返す
Ruler.pair

# 下記の書き方も可能
class Ruler2
  attr_accessor :length

  # 特異クラス（Singleton class/Eigen classとよばれる）
  class << self
    def pair
      [new, new]
    end

    def trio
      [new, new, new]
    end
  end
end

Ruler2.pair
Ruler2.trio
