# => Write a method which will take first name and
# => last name as two arguments and return the fullname.
# => author : Hrisikesh Singha Chowdhury

class CustomClass
  # => Fn to implement buisness logic
  def merge_input_string(fname, lname)
    # Merging names with a space in between
    "#{fname} #{lname}"
  end

  # => Fn to implement validation checking
  def input_string
    # => asking users to enter string
    puts "Enter first name"
    fname = gets.chomp
    puts "Enter second name"
    lname = gets.chomp
    ret_full_name = merge_input_string(fname, lname)
    puts "#{ret_full_name}"
  end
end

# => create instance and call method
CustomClass.new.input_string





