class Car
 
 # Getter! 
 def name
  @name = @name || "no name"
 end
 
 # Setter!
 def name=(new_name)
  @name = new_name
 end
end

c = Car.new
puts c.name

c.name = "Kier"
puts c.name

