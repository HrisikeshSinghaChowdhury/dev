# => 10. Write a method which will take a string input
# => and two numbers (start_position, end_position) input
# => and will return the substring. eg: If the string is "Hello World"
# => and start_position is 7, end position is 11
# => then it will return 'World'.
# => author : Hrisikesh Singha Chowdhury

# => definition of custom class
class CustomClass
  # => Fn to implement buisness logic
  def do_sub_str_op(str, str_start, str_end)
    puts "The substring is #{str.chomp.slice(str_start, str_end)}"
  end

  # => Fn to implement validation checking
  def chk_validity
    puts "Enter another string/starting position/ending position"
    str = gets.chomp
    puts "Enter starting position"
    str_start = gets.chomp.to_i
    puts "Enter ending position"
    str_end = gets.chomp.to_i

    if (str_start.zero? || str_end.zero?)
      puts "Sorry something wrong"
    else
      do_sub_str_op(str, str_start, str_end)
    end
  end
end

# => Instance of above class to call public method
CustomClass.new.chk_validity







