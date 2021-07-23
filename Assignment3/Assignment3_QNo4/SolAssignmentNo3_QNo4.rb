# => 4. Write a program to check whether all element is non zero?
# => (Method should return either true or false based on given input)
# => arr = [0, 10, 0, 0, 20]

def get_all_non_zeo
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
  cnt = 0
  arr.each do |each_element|
    if (each_element.to_i != 0)
      cnt += 1
    end
  end
  return cnt.eql?(size)
end
#call above normal method
puts "#{self.get_all_non_zeo}"