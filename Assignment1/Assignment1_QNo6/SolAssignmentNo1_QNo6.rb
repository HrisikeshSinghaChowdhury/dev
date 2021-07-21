# 6. Find out how to convert the string 'The Ruby Book is based on Ruby'  
#	 to 'The Rails Book is based on Rails' ?
#    author : Hrisikesh Singha Chowdhury

# Fn to implement buisness logic
public def ReplaceWords 
	# Repeateadly asking users to give correct input strings
	begin
		# Input the string
		puts "Enter the sentence"
		sent= gets.chomp
    end until (sent != nil)

    puts "Enter the old word to be replaced"
	oldWord = gets.chomp

	puts "Enter the new word by which to be replaced"
	newWord = gets.chomp

	if (sent.gsub!(oldWord,newWord) != nil)
		puts "The required senetence after replacement is  #{sent.gsub!(oldWord,newWord)}"
	else
		puts "The old word not found"
	end	
end 

# self denotes main object which is an Instance of class Object
self.ReplaceWords