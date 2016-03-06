foo = 'foo in toplevel'

def display_foo
  puts foo
end

puts foo
display_foo # NameErrorが出る

=begin

def display_foo
  puts @foo
end

とするとエラーは出ないが何も表示されない


=end
