str1 = "ruby"
str2 = "ruby"
str1 == str2 # true
str1.equal? str2 # false

symbol1 = :ruby
symbol2 = :ruby
symbol1 == symbol2 # true
symbol1.equal? symbol2 # true

__END__
シンボルのメリットは唯一制と軽量性
シンボルは内容が同値であれば必ず同一のオブジェクト
シンボルはimmutable
