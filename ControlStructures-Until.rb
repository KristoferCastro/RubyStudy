# Another cool thing about ruby is that it improves on while loops
# sometimes you get into the case with other programming languages like this

=begin
 while ( ! document.isPrinted() ){
	System.out.println("printing next page...");
 }
=end

# Ruby says, NO! that is too much reading! so introducing "until"
class Document
  def initialize
    @printed = false
    @page_count = 10 
    @page_printed = 0 
  end

  def is_printed?
    @printed
  end

  def print_next_page
    unless @page_printed == @page_count 
      puts "I am printing next page.."
      @page_printed = @page_printed + 1
    end
  end
end

document = Document.new
while !document.is_printed?
  document.print_next_page
end

# thats one way then until

until document.is_printed?
  document.print_next_page
end
