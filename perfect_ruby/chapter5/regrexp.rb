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
