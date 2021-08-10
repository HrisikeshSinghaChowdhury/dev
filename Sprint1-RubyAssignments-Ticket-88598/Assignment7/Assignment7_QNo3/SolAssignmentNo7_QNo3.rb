# => 3. Write a program to describe two difference between proc and lambda.
class ClassDemo
  # => method to demonstrate the first difference between lambda and proc
  def demo_first_diff
    # => input two names
    puts "Enter the first name"
    fname = gets.chomp
    puts "Enter the second name"
    lname = gets.chomp

    # => way the proc is created
    full_name = Proc.new { |fname, lname| puts "Proc called :#{fname} #{lname}" }
    # => call the proc
    full_name.call(fname, lname)

    # => way the lambda is created
    full_name = -> (fname, lname) { puts "Lambda called : #{fname} #{lname}" }
    # => call the lambda
    full_name.call(fname, lname)
  end

  # => method to demonstrate the second difference between lambda and proc
  def demo_second_diff
    # => input two names
    puts "Enter the first name"
    fname = gets.chomp
    puts "Enter the second name"
    lname = gets.chomp

    # => way the proc return from current context
    full_name = Proc.new { |fname, lname| puts "Not bothered about arguments" }
    # => call the proc
    full_name.call

    # => way the lambda returns
    full_name = -> (fname, lname) { return "#{fname} #{lname}" }

    # => call the lambda
    # => Here will raise an error that is arguments not given
    begin
      puts "#{full_name.call}"
    rescue ArgumentError => e
      puts "Number of arguments mismatch in lambda.#{e}"
    end
  end

  # => method to demonstrate the third difference between lambda and proc
  def demo_third_diff
    # => return statement in proc terminates from the method
    ret = Proc.new { return "hello inside proc.line returns" }
    puts "#{ret}"

    # => following codes gets skipped
    ret = -> () { puts "hello.Should print but the function terminates due to proc"};
    puts "#{ret.call}"
  end
end

class CustomClass
  def custom_method_call
    ClassDemo.new.demo_first_diff
    ClassDemo.new.demo_second_diff
    ClassDemo.new.demo_third_diff
  end
end

CustomClass.new.custom_method_call




