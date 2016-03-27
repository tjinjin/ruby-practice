# 空文字か
'foobar'.empty? # false
''.empty? # true

# 文字列の長さ
'foobar'.length # 6
'てにをは'.length # 4
'てにをは'.bytesize # 12

# 引数の文字列を自信が含んでいるか
'Alice Bob Charlie'.include?('Bob') #true

# 引数に指定した文字列から始まるか
'Highlight'.start_with?('High') # true

# 文字列連結
'Pine' + 'apple' # Pineapple

# 文字列をn回繰り返し
'Hello' * 3 # HelloHelloHello

# フォーマットした文字列
'Result: %04d' % 42 # "Result: 0042"

# << を用いると破壊的に追加する
str = 'Pine'
str << 'apple' # Pineapple
str # "Pineapple"

# 部分文字列の取得
str = 'The Answer to life, the universe, and everything: 42'

str.slice(4) # A位置を特定
str.slice(4, 6) # Answer 開始位置と取得文字数を指定
str.slice(4..9) # Answer 範囲で指定
str.slice(/[0-9]+/) # 42 正規表現で取得
str.slice(-2, 2) # 42

# sliceの代わりに[]も使える
str[4] # A
str[4, 6]
str[4..9]
str[/[0-9]+/]

# 破壊的メソッド
# レシーバから削除される
str.slice!(-2, 2)
