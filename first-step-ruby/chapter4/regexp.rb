if /<a href="(.*?)"[ >]/ =~ str
  puts $1 + "へのリンクを発見"
end
