# === パターンマッチ
/[0-9]/ === 'ruby' # false
/[0-9]/ === '128737' # true

# 引数の文字列が正規表現にマッチした位置を返す。なければnil
/[0-9]/ =~ "ruby" # nil
/[0-9]/ =~ "ruby5" # 4

# 文字列も指定デキる
def alice?(pattern)
  pattern === 'alice'
end

alice?(/Alice/i) # true
alice?('alice')  # true

# match
str = 'ruby5'

if matched = /[0-9]/.match(str)
  p matched # #<MatchData "5">
end

## MatchDataオブジェクト
#
/(あば).+(ばあ)/ =~ '「あばばばばばば、ばあ！」' # => 1

match = Regexp.last_match # => #<MatchData "あばばばばばば、ばあ" 1:"あば" 2:"ばあ">
match.pre_match # => "「" (マッチした文字列よりも手前の文字列)
match[0] # => "あばばばばばば、ばあ" (マッチした文字列全体)
match[1] # => "あば" (最初の括弧にマッチした文字列)
match[2] # => "ばあ" (2番目の括弧にマッチした文字列)
match[-1] # => "ばあ" (最後の括弧にマッチした文字列)
match.post_match # => "！」" (マッチした文字列よりも先の文字列)”

# scan
str = 'Ymazaki Niiaki'

# \w+ は1文字以上の英数字にマッチ
str.scan(/\w+zaki/)     # ["Ymazaki", "Niiaki"]
str.scan(/(\w)+zaki/)   # [["Yama"],["Nii"]]

str.scan(/\w+zaki/) {|s| puts s.upcase } # YMAZAKI NIIAKI
str.scan((/\w)+zaki/) {|s| puts s.upcase } # YAMA NII

# エスケープ
part = Regexp.escape('(incomplete)')

/[^.]+#{part}\.txt/ # => /[^.]+\(incomplete\)\.txt/ # 括弧がエスケープされている

# グルーピングと後方参照
/(B) to \1/ === 'B to B' # true
$1 # B 直前にマッチした文字列を取得できる

## ラベルを付与する
/(?<number>[0-9]+)/ === 'abc-123'
Regexp.last_match[:number] # 123

## 後方参照
/(?<num>[0-9]+)[a-c\-]+\k<num>/ === '123-abc-123'

## 部分式呼び出し
phone '080-1234-5678'

### 部分式呼び出し \g<1> は最初のグルーピングの式 ([0-9]+) で置き換えられる
/([0-9]+)-\g<1>-\g<1>/ === phone # => true

# 後方参照 \1 は最初にマッチした文字そのものを指すため、マッチしない
/([0-9]+)-\1-\1/ === phone # => false”

/(?<num>[0-9]+)-\g<num>-\g<num>/ === phone # => true

# 先読み・後よみ
#先読み(lookahead)後よみ(lookbehind)
# 任意のパターンAにマッチした文字列がほしいけれど、そのパターンAの直後（または直前）にはパターンBが続くような場合だけマッチさせたい
# (?<=pattern) は後よみ
# (?=pattern)は先読み
# 否定後読みは(?<!pattern)
# 否定先読みは(?!pattern)
pattern = /(?<=丁目)(\d+)(?=番地)/

pattern.match('東京都新宿区市ヶ谷1丁目1番地')

# バックトラックの抑止
#(?>)で正規表現を囲むとバックトラックを抑止できる。
# マッチが失敗しないようにすることをバックトラックという
pattern = /(\w+)/

pattern.match('ruby')[1] # ruby
pattern.match('ruby5')[1] # ruby5

pattern = /(\w+)[0-9]/

pattern.match('ruby')[1] # nil
pattern.match('ruby5')[1] # ruby5
pattern === 'ruby5' # true

pattern = /(?>\w+)[0-9]/
pattern === 'ruby5' # false

# オプションについて
# 様々なオプションによって、マッチの挙動を変更できる

# miを指定 m -> .に改行をマッチする。複数行モード i -> 大文字小文字を無視する
/ruby/mi
%r(ruby)mi
## その他にもオプションがあり、文字コードの指定や式評価などが可能
%w(foo bar).map {|str| /#{str}/ }  # [/foo/,/bar/]
%w(foo bar).map {|str| /#{str}/o } # [/foo/,/foo/]
# o -> 最初に評価された際に、式展開を行う
# 繰り返し処理の中に正規表現リテラルがあり、繰り返しのたびに式展開をしたくない場合使える

# 特定の場所だけにオプションを適用したい

r = /R(?i)uby(?-i)/

r === 'ruby' # false
r === 'Ruby' # true
r === 'RUBY' # true
