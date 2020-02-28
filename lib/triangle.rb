require 'pry'
class Triangle
  # write code here
  
  attr_accessor :side1, :side2, :side3
  
   def initialize(side1, side2, side3)
    @triangle = []
    @triangle << side1
    @triangle << side2
    @triangle << side3
  end
  
  def kind
    if @triangle.any?(0)
      raise TriangleError
      
    elsif @triangle.any? {|side| side < 0}
      raise TriangleError
      
    elsif ((@side1 + @side2) < @side3) || ((@side2 + @side3) < @side1) || ((@side1 + @side3) < @side2)
      raise TriangleError
      
    elsif @triangle.uniq.length == 1 
      :equilateral
      
    elsif @triangle.uniq.length == 2 
      :isosceles 
      
    else 
      :scalene
    end
  end
  
  class TriangleError < StandardError
  end  
  
end
