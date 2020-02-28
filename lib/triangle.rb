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
  
    def negative?
    @triangle.each do |length|
      if(length <= 0)
        return true
      end
    end
  end
  
  def valid?
    (@triangle[0] + @triangle[1] > @triangle[2]) &&
    (@triangle[1] + @triangle[2] > @triangle[0]) &&
    (@triangle[2] + @triangle[0] > @triangle[1])
  end
  
  def kind
    if (negative? == true || valid? == false)
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
