# => 7. Find out how to convert the string ' Ruby on Rails ' to 'Ruby on Rails' ?
# => author : Hrisikesh Singha Chowdhury

# => Fn to implement buisness logic
def trimming_space
	# Repeateadly asking users to give correct input strings
	begin
		puts "Enter the sentence"
		sent= gets.chomp
    end until (sent != nil)
    puts "The required senetence after trimming trailing and leading spaces is #{sent.strip}"
end 

# => self denotes main object which is an Instance of class Object
self.trimming_space