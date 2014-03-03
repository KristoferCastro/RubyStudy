=begin
  Ruby is a Object Orientated Programming Language.  It includes 
  features of OOP such as data abstraction, encapsulation, polymorphism,
  and inheritance
=end

module RubyClassStudy
  
  class Bag
    
    # Defining Getter and Setters!
    attr_accessor :color # read/write
    #attr_reader :color #read only
    #attr_writer :color #write only
        
    # how come this is not defined on instance objects? Since Ruby
    # implements the class hiearchy by instantiating Class objects.
    # The first instance is an instance of the Class class where @size will go
    # Then an instance of Class bag where the instance variables go!  
    @size = 10
    
    
    def initialize(color)
      @color = color # create instance variable and assign
    end
    
    public 
    def getColorTestPublic()
      @color
    end
    
    def size()
      @size
    end
    
    private
    def getColorTestPrivate()
      @color
    end
    
  end
  
  # bag1 = new Bag("orange")  THIS IS JAVA WAY FOOL!
  bag1 = Bag.new("orange") # Ruby way!
  puts bag1.getColorTestPublic()
  puts bag1.size()
end 

