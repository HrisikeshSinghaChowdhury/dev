# => 2. Write a class (with constructor) to define instance
# => methods for getting area & perimeter of a rectangle.

# => Business logic class
class RectangleSkeleton

  attr_accessor :len, :br

  # => defining fn to initialize instance variables
  def initialize(len, br)
    self.len = len
    self.br = br
  end

  # => return area of a rectangle
  def get_area
    len * br
  end

  # => return perimeter of a rectangle
  def get_perimeter
    2 * (len + br)
  end
end

# => Define user interface class
class RectangleInterfaceSkeleton
  def self.call_rectangle_ops
    res = "y"

    while (res == "y") do
      # => Create object as required of the above Rectangle class
      puts "--------------"
      puts "Enter the length of:"
      len = gets.chomp.to_i
      puts "Enter the breadth of:"
      br = gets.chomp.to_i
      ob_rect = RectangleSkeleton.new(len, br)
      puts "Area is = #{ ob_rect.get_area}"
      puts "Perimeter is =#{ob_rect.get_perimeter}"
      puts "--------------"
      puts "Press y/n to continue/exit"
      res = gets.chomp
    end

  end
end

# => Call using Class Methods
RectangleInterfaceSkeleton.call_rectangle_ops


