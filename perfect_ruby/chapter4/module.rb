# module
# インスタンスを生成できない
# 継承できない
#
# 用途は
# 名前空間を作る
# モジュールのメソッドを、あるクラスのインスタンスメソッドとして取り込む
# モジュールのメソッドを、あるオブジェクトの特異メソッド（クラスメソッド）として取り込む
# モジュール関数を定義して使う

module Sweet
  #特異メソッド
  def self.lot
    %w(brownie apple-pie bavarois pudding).sample # Array#sampleは要素をランダムに返す
  end

  module Chocolate
  end

  class Brownie
  end
end

p Sweet.lot
# 名前空間として利用
p Sweet::Chocolate
p Sweet::Brownie
