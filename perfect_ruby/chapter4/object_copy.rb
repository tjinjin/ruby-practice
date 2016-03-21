original = Object.new

original.object_id # AAA
original.freeze

# dupによるコピー
copy_dup = original.dup
copy_dup.object_id # AAA
copy_dup.frozen? # false

# cloneによるコピー
copy_clone = original.clone
copy_clone.object_id # AAA
copy_clone.frozen? # true

# dupもcloneも浅いコピー（shallow copy）を行う
# http://ref.xaio.jp/ruby/classes/object/clone
# Rubyには汚染レベルという考え方がある
