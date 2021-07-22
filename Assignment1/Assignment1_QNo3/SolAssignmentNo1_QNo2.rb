# => 3. Find out how to merge two strings 'Hello', 'World'
# => along with a space in between them?
# => author : Hrisikesh Singha Chowdhury

# Fn to implement buisness logic
def merge_string
	# Repeateadly asking users to give correct input strings
	begin
		puts "Enter first string"
		fname= gets.chomp
		puts "Enter second string"
		lname = gets.chomp
  end until (fname != nil && lname != nil)
    # Merging names with a space in between
	puts "The required merged name is with white space in between #{fname} #{lname}"
end 

# self denotes main object which is an Instance of class Object
self.merge_string