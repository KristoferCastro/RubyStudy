# This shows what a class in Ruby may look like

class Document
  
  # attr_accessor is a ruby method that takes in variable number of arguments.
  # In this example, it takes in three symbols (note: note strings)
  attr_accessor :title, :author, :content

  # initialize is how the Ruby interpreter identifies constructors.
  # In Java, the constructor is a no return type method that has the same
  # name of the class.  In this case, it would have been
  # public Document(..){} 
  # Interesting!
  def initialize(title, author, content)
    @title = title
    @author = author
    @content = content
  end

  # note how we are initializing and declaring the instance variables
  # of the class inside the constructor.  The "@" sign means it is a
  # instance variables

  # this is how functions or methods are created.  We use the word def.  
  # note there is no brackets.  Ruby does these little things that makes
  # it less verbose.  Note: the brackets are optional! You can still use it
  def words
    @content.split
  end 
end # even instead of curly braces, we make it more meaningful by saying "end"
    # doesn't that make more sense?!
