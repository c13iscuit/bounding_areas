class BoundingArea
  def initialize(array)
    @array = array
  end

  def contains_point?(x, y)
    if @array.length == 0
      false
    else
      @array.each do |box|
        if box.contains_point?(x, y)
          return true
        else
          return false
        end
      end
    end
  end
end
