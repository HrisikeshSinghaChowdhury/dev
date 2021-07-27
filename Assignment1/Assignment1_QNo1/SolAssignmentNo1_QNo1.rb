# => 1. Find out how to convert the string "7.13" into the number 7.13
# => author : Hrisikesh Singha Chowdhury

# => definition of custom class
class CustomClass
  # => Fn to implement buisness logic
  def cvt_str_to_int
    puts "Enter another string"
    str = gets.chomp
    str_output = str.chomp.to_f

    if (str.nil? && str_output.zero?)
      puts "Something wrong"
    else
      puts "The required floating conversion is #{str_output}"
    end
  end
end

# => create instance and call method
CustomClass.new.cvt_str_to_int




