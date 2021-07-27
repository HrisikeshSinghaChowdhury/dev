# => 4. Write a program to check whether all element is non zero?
# => (Method should return either true or false based on given input)
# => arr = [0, 10, 0, 0, 20]

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
  puts "Array Contents   #{arr.to_a}"
  cnt = 0

  arr.select do |each_element|
    if (each_element.to_i != 0)
      cnt += 1
    end
  end

  cnt.eql?(size)
end

#call above normal method
puts "#{self.get_all_non_zero?}"



