# メソッド内から呼び出し側のブロックをコールバックする
def foo_baz_baz
  yield "foo"
  yield "bar"
  yield "baz"
end

foo_baz_baz do |item|
  puts item
end

def foo_baz_baz2
  %w[ foo bar baz ].each do |item|
    yield item
  end
end
