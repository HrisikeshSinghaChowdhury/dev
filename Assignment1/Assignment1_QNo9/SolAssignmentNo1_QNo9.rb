# => 9. How to convert 'ruby' to :ruby ?
# => author : Hrisikesh Singha Chowdhury

# => definition of custom class
class CustomClass
  # => Fn to implement buisness logic
  def cvt_to_sym
    # => Repeateadly asking users to give correct input strings
    puts "Enter string"
    str = gets.chomp
    puts "The required symbolic name is #{str.to_sym}"
  end
end

# => create instance and call method
CustomClass.new.cvt_to_sym


