# => 5. Write a program to check whether any element is an even number?
# => (Method should return either true or false based on given input)
# => arr = [0, 10, 0, 0, 20]
class CustomClass
  def check_even
    # => create an empty array
    arr = []
    # => Enter the elements into array
    res = "y"

    while (res == "y") do
      puts "Enter the value for array "
      arr << gets.chomp
      puts "Enter y/n to continue/exit"
      res = gets.chomp
    end

    # => print original array
    puts "Array Contents #{arr.to_a}"
    cnt = 1

    arr.select do |each_element|
      # => check any element is even
      if (each_element.to_i.even?)
        return true
      end
    end
    false
  end
end

# => call above instance method
puts "#{CustomClass.new.check_even}"






