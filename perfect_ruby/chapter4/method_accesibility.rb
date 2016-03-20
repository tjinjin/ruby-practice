class Processor
  def process
    protected_process
  end

  def protected_process
    private_process
  end
  protected :protected_process # protected_processをprotectedに

  def private_process
    puts 'Done'
  end
  private :private_process
end

processor = Processor.new
processor.process
# NoMethodError
# privateなメソッドは呼び出しでレシーバを指定できない
#Processor.private_process
# NoMethodError
# protectedなメソッドは同じクラスかそのサブクラスのインスタンスからしか呼び出せない
#
# あまり使う場面はないとのこと
processor.protected_process

# 自動的にprivateとみなされるのは下記
# initializeという名前のインスタンスメソッド
# トップレベルで定義したメソッド
