# => Find out how to convert the string 'The Ruby Book' to 'THE RUBY BOOK' ?
# => author : Hrisikesh Singha Chowdhury

# => Fn to implement buisness logic
def sent_to_upcase
	# => Repeateadly asking users to give correct input strings
	begin
		puts "Enter the sentence"
		sent = gets.chomp
    end until (sent != nil)
    # => Converting into upper case
	puts "The required senetence with each character in upper case is #{sent.upcase}"
end 

# => self denotes main object which is an Instance of class Object
self.sent_to_upcase