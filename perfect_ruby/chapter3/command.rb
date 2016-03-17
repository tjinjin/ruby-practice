num = 1
`head -#{num} ~/.vimrc` # 戻り値は標準出力
# 成功したかどうかだけ知りたい
system('uname')
system('uname')
p $?

# 外部コマンドの終了を待たずに子プロセスのPIDを返す。
pid = spawn('uname')
Process.waitpid pid #特定のPIDの終了を待つ

# プロセスが外部コマンドに変わる。外部コマンドが終わるとプロセスが終了する
# exec 'uname'
# puts 'hello'

# 第一引数にハッシュを指定できる.
# 第二引数にオプションを指定したりできる
ENV['HOGE'] = 'huga'
system('echo $HOGE') # huga
system({'HOGE' => 'piyo'}, 'echo $HOGE') #piyo
pid = spawn({'HOGE' => 'piyo'}, 'echo $HOGE') #piyo
Process.waitpid pid

exec({'HOGE' => 'piyo'}, 'echo $HOGE') # 'piyo'
