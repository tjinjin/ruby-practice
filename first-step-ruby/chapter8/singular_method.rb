# 特異メソッド
# 特定のインスタンスに直接所属しているメソッド
# 正確には特異クラスのインスタンスメソッドのこと
message = "Hello"
def message.build_greeting(target)
  "#{self}, #{target}."
end
message.build_greeting("world")
message2 = "Hello"
# message2.build_greeting("world") # NomethodError

# singleton パターン
CENTRAL_REPOSITORY = Object.new
def CENTRAL_REPOSITORY.register(target)
  @registered_objects ||= []
  unless @registered_objects.include? target
    @registered_objects << target
  end
end
def CENTRAL_REPOSITORY.unregister(target)
  @registered_objects ||= []
  @registered_objects.delete(target)
end
