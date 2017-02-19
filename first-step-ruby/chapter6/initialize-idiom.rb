def generate_default_value
  p 'default value generated'
  return 'default value'
end

def some_method(param = nil)
  param ||= generate_default_value
end

some_method(nil)  # 出力
some_method(false)# 出力
some_method(true) # 出力なし
some_method(0)    # 出力なし
some_method()     # 出力
