# 1. Find out how to convert the string "7.13" into the number 7.13
# author : Hrisikesh Singha Chowdhury

# Fn to implement buisness logic
public def CvtStrtoInt
	# Repeateadly asking users to give correct input string
	begin
		# Input the string
		puts "Enter another string"
		str = gets.chomp

		strOutput = str.chomp.to_f
    end until (strOutput != nil && strOutput != 0)


	puts "The required floating conversion is #{strOutput}"
end 

# self denotes main object which is an Instance of class Object
self.CvtStrtoInt