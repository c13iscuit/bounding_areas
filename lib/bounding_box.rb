require 'pry'

class BoundingBox
  attr_reader :width, :height, :left, :right, :top, :bottom
  def initialize (left, bottom, width, height)
    @left = left
    @bottom = bottom
    @width = width
    @height = height
    @right = @left + @width
    @top = @bottom + @height
  end

  def contains_point?(x, y)
    if x <= @right && x >= @left && y >= @bottom && y <= @top
      true
    else
      false
    end
  end
end






