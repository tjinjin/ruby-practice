o = Object.new

# 自身への変更を禁止
o.freeze
o.frozen?

# 何らかの変更を加えようとすると例外が発生する
o.extend Enumerable

# 定数を変更禁止にする
DEFAULT_SETTINGS = [host: 'localhost', port: 9292].freeze
