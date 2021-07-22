# => 9. How to convert 'ruby' to :ruby ?
# => author : Hrisikesh Singha Chowdhury

# => Fn to implement buisness logic
def cvt_to_sym
	# => Repeateadly asking users to give correct input strings
	begin
		puts "Enter string"
		str = gets.chomp
  end until (str != nil )
  puts "The required symbolic name is #{str.to_hash.value}"
end 

# => self denotes main object which is an Instance of class Object
self.cvt_to_sym