# => 2. Write a class (with constructor) to define instance
# => methods for getting area & perimeter of a rectangle.

# => Business logic class
class RectangleSkeleton
  attr_accessor :length, :breadth

  # => defining fn to initialize instance variables
  def initialize(length, breadth)
    self.length = length
    self.breadth = breadth
  end

  # => return area of a rectangle
  def get_area
    length * breadth
  end

  # => return perimeter of a rectangle
  def get_perimeter
    2 * (length + breadth)
  end
end

# => Define user interface class
class RectangleInterfaceSkeleton
  def call_rectangle_ops
    response = "y"

    while (response == "y") do
      # => Create object as required of the above Rectangle class
      puts "--------------"
      puts "Enter the length of:"
      length = gets.chomp.to_i
      puts "Enter the breadth of:"
      breadth = gets.chomp.to_i
      ob_rect = RectangleSkeleton.new(length, breadth)
      puts "Area is = #{ ob_rect.get_area}"
      puts "Perimeter is =#{ob_rect.get_perimeter}"
      puts "--------------"
      puts "Press y/n to continue/exit"
      response = gets.chomp
    end
  end
end

# => Call using Class Methods
RectangleInterfaceSkeleton.new.call_rectangle_ops

