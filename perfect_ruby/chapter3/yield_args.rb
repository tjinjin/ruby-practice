def display_value
  puts yield
end

display_value do
  4423
end

# ブロック内でnextを呼び出すと処理は[yieldの呼び出し元に戻る]
display_value do
  next 42
end

# ブロック内でbreakを呼び出すと処理は[メソッドの呼び出し元に戻る]
display_value do
  break 42
end

# 処理がbreakで途中で終わってるので、ブロックの戻り値は出力されない

def with_current_time
  yield Time.now
end

with_current_time do |now|
  puts now.month
end

# ブロック引数なし
with_current_time do
  puts 'Hi'
end

# ブロック引数が多い
with_current_time do |now, something|
  puts something.inspect
end

# ブロック引数のデフォルト値
def default_argument_for_block
  yield #引数を渡さない
end

default_argument_for_block do |val = 'Hi'|
  puts val
end

def flexible_arguments_for_block
  yield 1,2,3
end

flexible_arguments_for_block do |*params|
  puts params.inspect
end
