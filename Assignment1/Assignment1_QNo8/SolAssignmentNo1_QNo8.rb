# Write a method which will take first name and last name as two arguments and return the fullname.
# author : Hrisikesh Singha Chowdhury

# Fn to implement buisness logic
public def DoMergeName (fname,lname)
    # Merging names with a space in between
	puts "The required merged name is with white space in between #{fname+" "+lname}"
end 


# Fn to implement validation checking
public def ChkValidity
	# Repeateadly asking users to give correct input string
	begin
		# Input the string
		puts "Enter first name"
		fname= gets.chomp
		puts "Enter second name"
		lname = gets.chomp

    end until (fname != nil && lname != nil)
	DoMergeName(fname,lname)
end 




# self denotes main object which is an Instance of class Object
self.ChkValidity