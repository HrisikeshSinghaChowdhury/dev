# => 1. Write a program to get all the words which are starting from 'ab'.
# => arr = ["abcde", "abdf", "adeab", "abdgse", "bdefa", "bacdef"]
# => Main buisness logic
def get_initial_array
  # => Enter the size of array
  puts "Enter the size of array"
  size = gets.chomp.to_i
  # => check for validity
  if size <= 0
    puts "Sorry size must be positive"
    Kernel.exit(0)
  end
  # => Allocate to size of array
  arr = Array.new(size)
  # => Enter each element
  (1..size).each  { |cnt|
    puts "Enter the #{cnt} element"
    arr << gets.chomp
  }
  flag = 0
  arr.each do | each_element |
     puts "Elements starting with ab is = #{each_element}" ,flag += 1 \
     if (each_element.to_s.start_with?("ab","AB","Ab","aB"))
  end
  puts "None of the array element starts with ab" if flag.zero?
end

# => To call the above normal method
self.get_initial_array