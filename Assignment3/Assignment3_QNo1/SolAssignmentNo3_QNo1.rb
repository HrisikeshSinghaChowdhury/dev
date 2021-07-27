# => 1. Write a program to get all the words which are starting from 'ab'.
# => arr = ["abcde", "abdf", "adeab", "abdgse", "bdefa", "bacdef"]
# => Main business logic

def get_initial_array
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
  flag = 0

  arr.select do | each_element |
    puts "Elements starting with ab is = #{each_element}", flag += 1 \
    if (each_element.to_s.start_with?("ab", "AB", "Ab", "aB"))
  end

  puts "None of the array element starts with ab" if flag == 0
end

# => To call the above normal method
self.get_initial_array





