# 沢山のライブラリを使ったプログラムを実行するにはrequireにかかる時間やリソースの消費が無視できない場合がある
# 毎回ロードする必要はない外部ファイルの読み込みにはautoloadを使う。
# autoloadは引数に指定したクラス・モジュール名が最初に参照されたときに外部ファイルを自動的にrequireする。
# 第一引数にはクラス・モジュール名の文字列かシンボルを渡し、第二引数にはrequireするファイル名を渡す

autoload :MySweets, 'my_library/my_sweets'

MySweets # ここでrequireされる

# ネストの場合
module MySweets
  autoload :Cake, 'my_library/my_sweets/cake'
end

MySweets::Cake # ここでrequireされる
