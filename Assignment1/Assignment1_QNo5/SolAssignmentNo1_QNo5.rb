# => 5. Find out how to convert the string 'The Ruby Book' to 'THE RUBY BOOK' ?
# => author : Hrisikesh Singha Chowdhury

# => definition of custom class
class CustomClass
  # => Fn to implement buisness logic
  def sent_to_upcase
    puts "Enter the sentence"
    sent = gets.chomp
    # => Converting into upper case
    puts "The required sentence with each character in upper case is #{sent.upcase}"
  end
end

# => Instance of above class to call public method
CustomClass.new.sent_to_upcase



