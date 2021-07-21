# Find out how to convert the string 'The Ruby Book' to 'THE RUBY BOOK' ?
# author : Hrisikesh Singha Chowdhury

# Fn to implement buisness logic
public def SentToUpCase 
	# Repeateadly asking users to give correct input strings
	begin
		# Input the string
		puts "Enter the sentence"
		sent= gets.chomp
    end until (sent != nil)

    # Converting into upper case
	puts "The required senetence with each character in upper case is #{sent.upcase}"
end 

# self denotes main object which is an Instance of class Object
self.SentToUpCase