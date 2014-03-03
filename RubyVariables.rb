
# Global variables start with "$"
$global_variable = "I am a global variable"

class Class1
  def print_global
    $global_variable
  end
end

class Class2
  def print_global
    $global_variable
  end
end

class1 = Class1.new
class2 = Class2.new

puts class1.print_global()

#Instance variables are defined inside methods and starts with "@"
class Customer
  def initialize(id, name, addr)
    @cust_id = id
    @cust_name = name
    @cust_addr = addr
  end
  
  def display_details()
    puts "Customer id #@cust_id"
    puts "Customer name #@cust_name"
    puts "Customer address #@cust_addr"
  end
end

class MobilePhone
  # attr_accessor :base_model this don't work like you think it should!
  
  class << self
    attr_accessor :base_model    
  end

  @@base_model = "iPhone"
  def initialize()
  end 
end

puts MobilePhone.base_model