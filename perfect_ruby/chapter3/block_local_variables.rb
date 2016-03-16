%w(Alice Bob Charlie).each do |person|
  someone = 'block local'
end

# ブロックの中野編スト同名のローカル変数がブロック外に存在しないとき、その変数はブロックのローカル変数とみなされる
#someone # NameError
#person # NameError

people = []

%w(Alice Bob Charlie).each do |person|
  people << person # 配列の末尾に要素を追加
end
p people

# ブロック内ではブロックのローカル変数が優先
someone = 'Dave'
people = []

%w(Alice Bob Charlie).each do |someone|
  people << someone
end

p someone
p people

# block ローカル変数を使ってみる
%w(Alice Bob Charlie).each do |person; someone|
  someone = person
end

p someone # Dave
