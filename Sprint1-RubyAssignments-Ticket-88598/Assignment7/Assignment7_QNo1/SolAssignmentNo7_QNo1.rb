# => 1. Define a lambda which will take 2 arguments
# => first name and last name and will generate fullname.
class ClassDemo
  def lambda_operation
    # => define lambda
    full_name = -> (fname, lname) { "#{fname} #{lname}" }
    # => input two names
    puts "Enter the first name"
    fname = gets.chomp
    puts "Enter the second name"
    lname = gets.chomp
    # => call the lambda
    puts "#{full_name.call(fname, lname)}"
  end
end

class CustomClass
  def custom_method_call
    ClassDemo.new.lambda_operation
  end
end

CustomClass.new.custom_method_call


