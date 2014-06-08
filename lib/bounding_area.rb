class BoundingArea
  def initialize(boxes)
    @boxes = boxes
  end

  def contains_point?(x, y)
    if @boxes.length == 0
      false
    else
      @boxes.each do |box|
        if box.contains_point?(x, y)
          return true
        else
          return false
        end
      end
    end
  end
end
