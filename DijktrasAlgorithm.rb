module DijktrasAlgorithm
  # How do we model a graph? 
  # We need Vertex, Edge
  
  class Vertex
    
    def initialize(label, edges)
      @label = label
      @edges = edges # I like static language better since we know the datastructure
                     # right away.
    end
    
  end
  
  class Edge
    
    def initialize(w,v)
      @weight = w
      @vertex = v
    end
    
  end
    
end

