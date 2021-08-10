# => 4. Write a program to check whether all element is non zero?
# => (Method should return either true or false based on given input)
# => arr = [0, 10, 0, 0, 20]
class CustomClass
  def get_all_non_zero?
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
    cnt = 0

    arr.select do |each_element|
      if (each_element.to_i.zero?)
        return false
      end
    end
    true
  end
end

# => call above instance method
puts "#{CustomClass.new.get_all_non_zero?}"






