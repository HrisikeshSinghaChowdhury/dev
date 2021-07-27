# => 3 Write an example of how you can use super method with and without arguments.
# => Super Parent Class
class SuperParentSkeleton
  def initialize
    puts "Hii You chose option : Super without Arguments in Parent Class"
  end

  def super_argument(num)
    puts "hii You chose option : Super with Arguments in Parent Class"
  end
end

# => Super child class
class SuperChildSkeleton < SuperParentSkeleton
  def initialize
    # super without arguments
    super
    puts "Hii You chose option : Super without Arguments in Child Class"
  end

  def super_argument(num)
    # super with arguments
    super(num)
    puts "Hii You chose option : Super with Arguments in Child Class"
    end
end

# => Call the above SuperChildSkeleton class
ob = SuperChildSkeleton.new
ob.super_argument(9)

