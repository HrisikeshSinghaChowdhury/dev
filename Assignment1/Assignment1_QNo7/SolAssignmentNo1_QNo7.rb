# => 7. Find out how to convert the string ' Ruby on Rails ' to 'Ruby on Rails' ?
# => author : Hrisikesh Singha Chowdhury

class CustomClass
  # => Fn to implement buisness logic
  def trimming_space
    # Repeateadly asking users to give correct input strings
    puts "Enter the sentence"
    sent = gets.chomp
    puts "The required senetence after trimming trailing and leading spaces is #{sent.strip}"
  end
end

# => Instance of above class to call public method
CustomClass.new.trimming_space




