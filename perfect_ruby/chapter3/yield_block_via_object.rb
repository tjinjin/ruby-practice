people = %w(Alic Bob Charlie)
block = Proc.new{|name| puts name}

people.each &block

p1 = Proc.new {|val| val.upcase}
p2 = :upcase.to_proc

p p1.call('Hi')
p p2.call('Hi')

people.map {|person| person.upcase}
# 上と同じ
people.map(&:upcase)
