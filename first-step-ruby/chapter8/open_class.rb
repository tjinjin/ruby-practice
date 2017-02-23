# 既存のクラス定義を変更できる
# オープンクラスという
class Animal
end

class Yahoo < Animal
end

class Yahoo
end

p Yahoo.superclass
