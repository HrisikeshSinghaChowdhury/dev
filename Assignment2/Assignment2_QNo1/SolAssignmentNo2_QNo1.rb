# => 1. Write a class and define a class method which will return
# => the object count of that class.
# => Define the class
class UserMainSkeleton
  # => Define class variable initialize everytime new object is created
  @@cnt_object = 0

  def initialize
    @@cnt_object += 1
  end

  # => Define the class method
  def self.fn_cnt_object
    @@cnt_object
 end
end

# => Define user interface class
class UserInterfaceSkeleton
  def self.user_access_interface
    res = "y"

    while (res == "y") do
      # => Create object of the above class
      puts "Creating object...."
      obj = UserMainSkeleton.new
      puts "Object count of the class is = #{UserMainSkeleton.fn_cnt_object}"
      puts "Press y/n to continue/exit"
      res = gets.chomp
    end
  end
end

# => Call the user interface method
UserInterfaceSkeleton.user_access_interface






