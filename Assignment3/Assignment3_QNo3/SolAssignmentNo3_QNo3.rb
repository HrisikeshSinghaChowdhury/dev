# => 3. Write a program to get first element which is non zero number.
# =>  arr = [0, 10, 0, 0, 20]

def get_first_positive
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
  arr.each do |each_element|
    if (each_element.to_i != 0)
      puts "The first non zero number is #{each_element}"
      Kernel.exit(0)
    end
  end
  puts "All elements are 0"
end
#call above normal method
self.get_first_positive