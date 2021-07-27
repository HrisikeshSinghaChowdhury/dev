# => 6. Find out how to convert the string 'The Ruby Book is based on Ruby'
# => to 'The Rails Book is based on Rails' ?
# => author : Hrisikesh Singha Chowdhury

# => Fn to implement buisness logic
def replace_word
  # => Asking users to give correct input strings
  puts "Enter the sentence"
  sent = gets.chomp
  puts "Enter the old word to be replaced"
  old_word = gets.chomp
  puts "Enter the new word by which to be replaced"
  new_word = gets.chomp
  new_sent = sent.gsub!(old_word,new_word)

  if (new_sent.nil?)
    puts "The old word not found"
  else
    puts "The required senetence after replacement is  #{new_sent}"
  end

end 

# => self denotes main object which is an Instance of class Object
self.replace_word


