# => 2. Write a program to convert
# => ['abc bcd', 'mno pqr xyz', 'efg'] to
# => ['abc', 'bcd', 'mno', 'pqr', 'xyz', 'efg']
def get_merge_array
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
  flag = 0
  output_arr = []

  arr.select do | each_element |
    output_arr << each_element.to_s.split
  end

  puts "#{output_arr.flatten}"
end

# => call the above normal method
self.get_merge_array


