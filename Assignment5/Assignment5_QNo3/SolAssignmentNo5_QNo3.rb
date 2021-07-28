# => 3. Write a program to define a method inside a module and
# => then use the module in such a way that the method can be
# => accessible as an instance method of that class.

# => import the module file
require_relative 'module_instance_method.rb'

class ClassModuleInterface
  # => include both modules
  extend ModuleDemoInstanceMethod
  # => call the instance_method_behave
  method_instance_behave
end


