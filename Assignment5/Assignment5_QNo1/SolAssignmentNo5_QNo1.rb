# => 1. Write a program to define two modules and both having a
# => method with same name but with different functionality and
# => then define a method in a class and use those module methods inside that.
# => import the two module file
require_relative 'module_add.rb'
require_relative 'module_sub.rb'

class ClassModuleInterface

  # => include both modules
  include ModuleAdd
  include ModuleSub

  # => call the common method
  def self.call_common_method

    puts "The addition from Module Add is = "
    ModuleAdd.common_method
    puts "The subtraction from Module Sub is = "
    ModuleSub.common_method
  end

end

#call the class method
ClassModuleInterface.call_common_method

