module Foo2
def self.extended base
puts "Class #{base} has been extended with module #{self} !"
end
end
class Bar2
extend Foo2
end