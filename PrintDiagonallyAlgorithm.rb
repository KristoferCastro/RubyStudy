module PrintDiagonallyProblem
  # How do we model a graph? 
  # If we are given 
  
  public
  def printDiagonally(a)
    r = a.size
    c = a[0].size

    # start from top left to right
    row = 0
    for i in 0...c
      column = i
      result = ""
      while !outOfBounds?(a,row,column) do
        result += a[row][column].to_s
        row += 1
        column -= 1
      end
      row = 0
      puts result
    end
  
  end
  
  def outOfBounds?(a, row, column)
    (row >= a[0].size || column < 0)? true:false
  end
  
end

## if you don't add this printDiagonally(a) won't be defined
include ShortestPathProblem 

a = [ [1,2,3], [4,5,6], [7,8,9]]
printDiagonally(a) #ShortestPathProblem.printDiagonally(a)

