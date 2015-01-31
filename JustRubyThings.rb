tuple = [ ['a',1], ['b',2], ['c',3] ]

# how do we convert to a hash { 'a' => 1 , 'b' => 2, 'c' => 3 }

myHash = Hash.new
tuple.each do |obj| myHash[obj[0]] = obj[1] end

puts myHash

# Make it available for all arrays
# by using Rubys "open class" principle.
# Extend the Array class and add a new function!

class Array
  def tuple_to_h(tup = self)
    hash = Hash.new
    tup.each do |obj| hash[obj[0]] = obj[1] end
    return hash
  end
end

tuple = [ ['x',1] , ['y', 2] , ['z', 3] ]
h = tuple.tuple_to_h
print h
