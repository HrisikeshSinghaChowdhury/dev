# => 3. Write a program to get first element which is non zero number.
# =>  arr = [0, 10, 0, 0, 20]
class CustomClass
  def get_first_positive
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

    arr.select do |each_element|
      if (each_element.to_i.zero?)
        next
      else
        puts "The first non zero number is #{each_element}"
        Kernel.exit(0)
      end
    end
    puts "All elements are 0"
  end
end

# => call above instance method
CustomClass.new.get_first_positive




