# => 2. Write a program to convert
# => ['abc bcd', 'mno pqr xyz', 'efg'] to
# => ['abc', 'bcd', 'mno', 'pqr', 'xyz', 'efg']
def get_merge_array
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
  output_arr = Array.new
  arr.each do | each_element |
    output_arr << each_element.to_s.split
  end
  puts "#{output_arr.flatten}"
end

# => call the above normal method
self.get_merge_array
