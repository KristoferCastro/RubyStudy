# Here we investigate what Ruby does to make things more clear with regards
# to Control Structures

=begin
 In Java, you can do something like this:
 
 if ( !ready ) { 
     System.out.println("I am not ready")
 }

 Similarly, you can do something like this in Ruby

 if not @ready 
   puts "I am not ready"
 end

=end

# Look how much more readable it is using the "unless" keyword
def check_ready
  ready = false
  unless ready
    puts "I am not ready"
  end
end

# We take it a step further and put it in one line!
def check_ready2
 ready = false
 unless ready  then puts "I am not ready" end 
end

check_ready
check_ready2



