class Rectangle
  def initialize(length, height)
    @length = length
    @height = height
  end

  def perimeter
    2 * (@length + @height)
  end

  def set_dimensions(length = nil, height = nil)
    if !length.nil?
      @length = length
    end

    if !height.nil?
      @height = height
    end
  end

  def area
    @length * @height
  end

  def height
    @height
  end

  def length
    @length
  end
end

box = Rectangle.new(5,5)
puts "box height: #{box.height} box length #{box.length}"
box.set_dimensions(50)
puts "box height: #{box.height} box length #{box.length}"
puts box.perimeter.inspect
puts box.area
