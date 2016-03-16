# putsをgreetという名前で呼び出せるようにする
alias greet puts

greet 'hi'

undef puts
greet 'hi' # 元がなくなっても影響なし
