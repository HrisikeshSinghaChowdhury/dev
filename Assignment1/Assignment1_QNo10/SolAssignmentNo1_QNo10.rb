# => 10. Write a method which will take a string input
# => and two numbers (start_position, end_position) input
# => and will return the substring. eg: If the string is "Hello World"
# => and start_position is 7, end position is 11
# => then it will return 'World'.
# => author : Hrisikesh Singha Chowdhury

# => Fn to implement buisness logic
def do_sub_str_op(str, start, e)
<<<<<<< HEAD
  puts "The substring is #{str.chomp.slice(start, e)}"
end

# => Fn to implement validation checking
def chk_validity

  puts "Enter another string/starting position/ending position"
  str = gets.chomp
  puts "Enter starting position"
  st = gets.chomp.to_i
  puts "Enter ending position"
  en = gets.chomp.to_i

  do_sub_str_op(str, st, en)
end 

# => self denotes main object which is an Instance of class Object
self.chk_validity
=======
	puts "The substring is #{str.chomp.slice(start,e)}"
end 

# => Fn to implement validation checking
def chk_validity
	# => Repeateadly asking users to give correct input string
	begin
		puts "Enter another string/starting position/ending position"
		str = gets.chomp
		puts "Enter starting position"
		st = gets.chomp.to_i
		puts "Enter ending position"
		en = gets.chomp.to_i
  end until (str != nil && st < en )
	do_sub_str_op(str,
								st,
								en)
end 

# => self denotes main object which is an Instance of class Object
self.chk_validity
>>>>>>> 866c377261b758df189fa60de4ad4d93f0cfd0ea
