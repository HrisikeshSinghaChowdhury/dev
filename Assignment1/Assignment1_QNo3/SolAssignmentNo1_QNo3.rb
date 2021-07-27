# => 3. Find out how to merge two strings 'Hello', 'World'
# => along with a space in between them?
# => author : Hrisikesh Singha Chowdhury

# => Fn to implement buisness logic
def merge_string

  puts "Enter first string"
  fname= gets.chomp
  puts "Enter second string"
  lname = gets.chomp
  # => Merging names with a space in between
  puts "The required merged name is with white space in between #{fname} #{lname}"
end 

# => self denotes main object which is an Instance of class Object
self.merge_string

