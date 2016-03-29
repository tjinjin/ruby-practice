str = "hi \t"

# strip
# 前後の空白文字（半角スペース\t\r\n\f\v）を除外

str.strip # 'hi'
str.rstrip # ' hi'
str.lstrip # 'hi \t'

# chomp
# 文字列の末尾にある改行コードを1つだけ取り除いた文字列を返す
"hi \n\n".chomp # "hi \n"

# chop
# 文字種に関わらず文字列の末尾の1文字を取り除く
'Users'.chop # User

# squeeze
# 同じ文字が連続している場合に１つにまとめる
# デフォルトでは全てが対象で、第一引数にまとめる文字列を指定できる
'wooooooooooooooo'.squeeze # wo
'aaaabbbbbbccccc'.squeeze  # abc
'aabbccdd'.squeeze('a-c')  # abcdd

'ABC'.downcase
'abc'.upcase
'Abc'.swapcase # aBC 入れ替える
'tiTle'.capitalize   # TiTlea 先頭だけ大文字にする

# sub
# 最初にマッチした文字列を置換
'24-1-365'.sub(/[0-9]+/, 'x') # x-1-365

# gsub
# すべての文字列を置換
'24-1-365'.gsub(/[0-9]+/, 'x') # => "x-x-x”

## sub/gsubは第二引数の代わりにブロックを渡せる
'24-1-365'.gsub(/[0-9]+/, 'x') {|str| str.to_i.succ } # 25-2-366
# 組み込み変数を使える
'24-1-365'.gsub(/[0-9]+/, 'x') { $1.to_i.succ } # 25-2-366

# 破壊的メソッド
# 自身に何も変更がないときはnilが変える
str = ' hi '
str.strip! # "hi"

str.strip! # nil

# 語句を入れ替える
'dam'.reverse # mad
'ダム'.reverse # ムダ

str = 'dam'
str.reverse! # 'mad'
str # mad
