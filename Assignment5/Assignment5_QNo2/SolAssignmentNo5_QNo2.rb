# => 2. Write a program to define a method inside a
# => module and then use the module in such a way that
# => the method can be accessible as a class method of that class.

# => import the two module file
require_relative 'module_class_method.rb'

class ClassModuleInterface
  # => extend module to migrate to class method
  include ModuleDemoClassMethod

  def self.call_class_method
    puts "The addition from Module Add is = "
    ModuleDemoClassMethod.behave_class_method
  end
end

#call the class method
ClassModuleInterface.call_class_method


