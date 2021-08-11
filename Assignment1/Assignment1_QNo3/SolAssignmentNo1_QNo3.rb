# => 3. Find out how to merge two strings 'Hello', 'World'
# => along with a space in between them?
# => author : Hrisikesh Singha Chowdhury

# => definition of custom class
class CustomClass
  # => Fn to implement buisness logic
  def merge_string
    puts "Enter first string"
    fname = gets.chomp
    puts "Enter second string"
    lname = gets.chomp
    # => Merging names with a space in between
    puts "The required merged name is with white space in between #{fname} #{lname}"
  end
end

# => Instance of above class to call public method
CustomClass.new.merge_string





