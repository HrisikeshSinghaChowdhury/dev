# => 1. Find out how to convert the string "7.13" into the number 7.13
# => author : Hrisikesh Singha Chowdhury

# => Fn to implement buisness logic
def cvt_str_to_int

  puts "Enter another string"
  str = gets.chomp
  str_output = str.chomp.to_f
  if (str.nil? && str_output == 0)
    puts "Something wrong"
  else
    puts "The required floating conversion is #{str_output}"
  end
end 

# => self denotes main object which is an Instance of class Object
self.cvt_str_to_int
