# => 9. How to convert 'ruby' to :ruby ?
# => author : Hrisikesh Singha Chowdhury

# => Fn to implement buisness logic
def cvt_to_sym
<<<<<<< HEAD

  # => Repeateadly asking users to give correct input strings
  puts "Enter string"
  str = gets.chomp
=======
	# => Repeateadly asking users to give correct input strings
	begin
		puts "Enter string"
		str = gets.chomp
  end until (str != nil )
>>>>>>> 866c377261b758df189fa60de4ad4d93f0cfd0ea
  puts "The required symbolic name is #{str.to_hash.value}"
end 

# => self denotes main object which is an Instance of class Object
<<<<<<< HEAD
self.cvt_to_sym
=======
self.cvt_to_sym
>>>>>>> 866c377261b758df189fa60de4ad4d93f0cfd0ea
