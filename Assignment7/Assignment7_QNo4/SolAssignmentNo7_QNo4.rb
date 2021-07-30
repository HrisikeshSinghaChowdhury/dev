# => 4. Define a method which will take a block which will
# =>    generate the full name from first name and last name.
class ClassDemo
  def self.generate_full_name(&block_name)
    # => input two names
    puts "Enter the first name"
    fname = gets.chomp
    puts "Enter the second name"
    lname = gets.chomp
    block_name.call(fname, lname)
  end

  # => define the block to generate full name
  generate_full_name { |first_name, last_name| puts "Explicit block : #{first_name} #{last_name}" }
end

class CustomClass
  def custom_method_call
    ClassDemo.generate_full_name
  end
end

