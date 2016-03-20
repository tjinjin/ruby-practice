VALUE = 'toplevel'

class Foo
  VALUE = 'in Foo class'

  class Bar
    def self.value
      VALUE
    end
  end
end

# Foo::BarからVALUEを参照すると近い方から見ていく
p Foo::Bar.value  # in foo
p Foo::VALUE      # in foo
p ::VALUE         # top
p VALUE           # top
