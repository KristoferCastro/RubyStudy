# In Ruby, there are only two things that evaluate to false:
# false and nil; everything else is true.

# In some programming languages like C and C++ treats 0 as false as well.
# In Javascript, I think that an empty string is evaluated as false too.

puts "false is false" if false == false
puts "nil is false" if nil == false
puts "empty string is false" if "" == false
puts "0 is false" if 0 == false

# what do you expect? It should be that false is false and nil is false.
# however, if nil == false is not equal. Why?! nil is not strictly equal to false
# nil is a NilClass and false is a boolean data type. nil == false will run the == 
# method of nill and will evaluate to false they are not equal

puts "nil is actually false" if !nil # see how it is false used in a boolean context
