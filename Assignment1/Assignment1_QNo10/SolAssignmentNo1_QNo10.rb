#     10. Write a method which will take a string input and two numbers (start_position, end_position) input and will return the substring.
#     eg: If the string is "Hello World" and start_position is 7, end position is 11 
#	  then it will return 'World'.
# 	  author : Hrisikesh Singha Chowdhury

# Fn to implement buisness logic
public def DoSubStrOp ( str, start,e)
	puts "The substring is #{str.chomp.slice(start,e)}"
end 

# Fn to implement validation checking
public def ChkValidity
	# Repeateadly asking users to give correct input string
	begin
		# Input the string
		puts "Enter another string/starting position/ending position"
		str = gets.chomp
		
		puts "Enter starting position"
		st = gets.chomp.to_i

		puts "Enter ending position"
		en = gets.chomp.to_i

    end until (str != nil && st < en )
	DoSubStrOp(str,st,en)
end 

# self denotes main object which is an Instance of class Object

self.ChkValidity