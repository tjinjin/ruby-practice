# すべての文字列はエンコーディング情報を保持
# 文字列の比較・結合時には意識が必要
# String#encoding
# 文字列のencoding情報をEncodingオブジェクトとして返す
'てにわは'.encoding # <Encoding:UTF-8>

# String#encode
# 変更する
str = 'こんにちは'
str.enconding # UTF-8

new_str = str.encode(Encoding::EUC_JP) # "\x{A4B3}\x{A4F3}\x{A4CB}\x{A4C1}\x{A4CF}"
new_str.encoding # <Encoding::EUC_JP>

# 破壊的メソッドencode!を使うと自身を変更して返す

# エンコーディングが違うと同値とならず、文字列連結できない場合がある
utf8 = 'こんにちは'.encode('UTF-8')
eucjp = 'こんにちは'.encode('EUC-JP')

# 比較
utf8 == eucjp # false
utf8.eql?(eucjp) # false eql?はハッシュのキーの比較に用いられる

# 連結
utf8 + eucjp # Encoding::CompatibilityError: incompatible character encodings: UTF-8 and EUC-JP

# ASCII互換エンコーディング文字列とASCII文字だけで構成されたものなら問題ない
eucjp = 'Hello'.encode('EUC-JP')      # ASCII互換
utf8 	= 'Hello'.encode('UTF-8')       # ASCII互換
utf16 = 'Hello'.encode('UTF-16')      # ASCII互換でない
ascii = 'Hello'.encode('ASCII-8BIT')  # ASCII

# 比較
p utf8 == eucjp # true
p utf8 == ascii # true
p utf8 == utf16 # false

# 連結
utf8 + eucjp # "HelloHello"
utf8 + ascii # "HelloHello"
utf8 + utf16 # Encoding::CompatibilityError: incompatible character encodings: UTF-8 and UTF-16”
