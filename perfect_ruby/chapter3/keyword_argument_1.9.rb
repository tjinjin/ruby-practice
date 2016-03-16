# ruby1.9ではキーワード引数がなかったので、擬似キーワード引数がよく使われていた
# ruby2からはキーワード引数でかける

# 引数をそのまま帰すメソッド
def keywords(hash = {})
  hash
end

# Hashのプレースを省略
keywords(alice: 'アリス', bob: 'ボブ')

# メソッド呼び出しの会話も省略
keywords alice: 'アリス', bob: 'ボブ'

# デフォルト値あり
def keywords(hash = {})
  defaults = {alice: 'ありす', bob: 'ぼぶ'}
  hash = defaults.merge(hash)

  hash
end

keywords bob: 'ボブ' # {:alice => 'ありす', :bob => 'ボブ'}
