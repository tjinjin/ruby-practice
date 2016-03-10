def call
  'called'
end

p call

def greet(recipient)
  return false unless recipient

  "Hi, #{recipient.capitalize}."
end

p greet 'alice'
p greet nil
# 明示的にreturnを書く必要はない
