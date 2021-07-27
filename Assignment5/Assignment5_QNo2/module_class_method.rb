# => 2. Write a program to define a method inside a
# =>  module and then use the module in such a way that
# => the method can be accessible as a class method of that class.

module ModuleDemoClassMethod

  # => define common method
  def self.behave_class_method
    puts "The addition of two numbers 9 + 5 = 14"
  end

end

