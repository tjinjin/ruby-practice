class MyClass
end

p MyClass.superclass # => Object

o = Object.new

# 自身の情報を返す
p o.class # どのクラスのオブジェクトか
p o.is_a?(Object) # Objectのインスタンスか
p object_id # オブジェクト固有のID
p o.nil? # nilか
p o.frozen? #freezeされているか
# 自身をブロック引数にしてブロックを実行し、自身を返す
p o.tap {|v| puts v }

# 同一性を返す演算子メソッドですが、
# ほとんどのクラスでは同値性を返すようなオーバーライドされている
p Object.new == Object.new # => false
p [1, 2, 3] == [1, 2, 3] # => true
p /pattern/ == /pattern/ # => true
p 'Alice' == 'Alice' # => true
