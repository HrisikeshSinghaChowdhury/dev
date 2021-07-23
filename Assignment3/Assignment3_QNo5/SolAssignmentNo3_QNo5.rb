# => 5. Write a program to check whether any element is an even number? (Method should return either true or false based on given input)
# => arr = [0, 10, 0, 0, 20]
def check_even
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
  (1..size).each  { |i|
    puts "Enter the #{i} element"
    arr << gets.chomp
  }
  cnt = 1
  arr.each do |each_element|
    # => check any element is even
    if (each_element.to_i.even?)
     return true
    end
  end
  return false
end
#call above normal method
puts "#{self.check_even}"