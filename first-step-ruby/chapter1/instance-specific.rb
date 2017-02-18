a, b = "str", "str"
def a.greet
  puts "#{self.object_id}"
end

a.greet
b.greet
