def keywords(alice: nil, bob: nil)
  {alice: alice, bob: bob}
end

keywords alice: 'ありす', bob: 'ぼぶ'

def keywords_with_options(alice: nil, bob: nil, **others)
  {alice: alice, bob: bob, others: others}
end

# どちらも同じ
keywords_with_options alice: 'ありす', bob: 'ぼぶ', others: 'ちゃーりぃ'
keywords_with_options bob: 'ぼぶ', others: 'ちゃーりぃ',alice: 'ありす'

# **に何も渡さないと
keywords_with_options alice: 'ありす', bob: 'ボブ'
