# => Write a method which will take first name and
# => last name as two arguments and return the fullname.
# => author : Hrisikesh Singha Chowdhury

# => Fn to implement buisness logic
def do_merge_name(fname,lname)

  # Merging names with a space in between
  puts "The required merged name is with white space in between #{fname} #{lname}"
end

# => Fn to implement validation checking
def input_string

  # => asking users to enter string
  puts "Enter first name"
  fname= gets.chomp
  puts "Enter second name"
  lname = gets.chomp
  do_merge_name(fname, lname)

end

# => self denotes main object which is an Instance of class Object
self.input_string

