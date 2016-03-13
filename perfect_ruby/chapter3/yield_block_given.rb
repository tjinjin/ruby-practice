def block_sample
  puts 'stand up'

  yield if block_given?

  puts 'sit down'
end

# ブロックなし
block_sample

# ブロックあり
block_sample { puts 'walk' }
