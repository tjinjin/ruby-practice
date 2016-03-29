str = 'Alice, Bob, Charlie'

# 文字列化正規表現で分割する
str.split(',')
str.split(/,\s+/)

# 要素が2つの配列になるとそれ以上分割しない
str.split(/,\s+/, 2) # 'Aclice', 'Bob Charlie'

# 文字を取得する
'Alice'.split(//)
'Alice'.each_char.to_a
