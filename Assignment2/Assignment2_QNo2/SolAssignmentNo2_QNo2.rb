# => 2. Write a class (with constructor) to define instance
# => methods for getting area & perimeter of a rectangle.

# => Buisness logic class
class Rectangle
  def initialize(length, breadth)
    @length = length
    @breadth = breadth
  end
  # => return area of a rectangle
  def get_area
    @length * @breadth
  end
  # => return perimeter of a rectangle
  def get_perimeter
    2 * (@length + @breadth)
  end
end

# => Define user interface class
class CallRectangle
  @@cnt = 1
  def CallRectangle.call_rectangle_ops
    res = "y"
    while (res == "y") do
        # => Create object as required of the above Rectangle class
        puts "Creating object.of Rect #{@@cnt}..."
        puts "--------------"
        puts "Enter the length of:"
        len = gets.chomp.to_i
        puts "Enter the breadth of:"
        br = gets.chomp.to_i
        ob_rect = Rectangle.new(len,br)
        puts "Area is = #{ob_rect.get_area}"
        puts "Perimeter is =#{ob_rect.get_perimeter}"
        puts "--------------"
        @@cnt += 1
        puts "Press y/n to continue/exit"
        res = gets.chomp
    end
  end
end

# => Call using Class Methods
CallRectangle.call_rectangle_ops
