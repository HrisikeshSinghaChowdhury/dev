# => 2. Do the same thing mentioned above using proc instead of lambda.
class ClassDemo
  def proc_operation
    # => define proc
    full_name = Proc.new { |fname, lname| puts "#{fname} #{lname}" }
    # => input two names
    puts "Enter the first name"
    fname = gets.chomp
    puts "Enter the second name"
    lname = gets.chomp
    # => call the proc
    full_name.call(fname, lname)
  end
end

class CustomClass
  def custom_method_call
    ClassDemo.new.proc_operation
  end
end

CustomClass.new.custom_method_call

