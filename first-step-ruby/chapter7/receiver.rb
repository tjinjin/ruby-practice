class Laputa
  def hover
    vibrate # れしーばの省略
    p self
  end

  def vibrate
    p self
    p "vibrate"
  end
end

takalamakhan = Laputa.new
takalamakhan.hover # takalamakhan.vibrateが呼ばれる

__END__
vibrate = 1
vibrate  # ろーかる変数参照
self.vibrate # メソッド呼び出し
