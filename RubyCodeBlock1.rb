# Ruby is full of code-blocks, it almost seems like they dispise
# things like for loops.  Ruby says, we can do it better!

=begin
 in Java, you would see somethign like this if you want to do something 10 times

 for ( int i = 0 ; i < 10 ; ++i){
   // do something
 }

 int i = 0;
 while ( i < 10 ) { 
   // do something
   i++;
 }
=end 

10.times do |n|
  puts "I am number #{n}"
end

=begin
  What does this do exactly? Since everything is an object.  The number
  is an object with a method called times.  You then pass a code block
  that does its thing on every number n from 10 downto 1
=end

# this is another one.   This is analogues to Javas for or c sharps foreach.
# however in here we associate each with the class we iterating over itself.
# neat!
doc = ["this", "is", "a", "document"]
doc.each do |word|
 puts word + " "
end 
