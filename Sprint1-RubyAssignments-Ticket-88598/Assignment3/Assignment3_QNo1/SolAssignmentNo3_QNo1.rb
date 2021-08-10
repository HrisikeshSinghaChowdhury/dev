# => 1. Write a program to get all the words which are starting from 'ab'.
# => arr = ["abcde", "abdf", "adeab", "abdgse", "bdefa", "bacdef"]
# => Main business logic
class CustomClass
  def get_initial
    # => create an empty array
    arr = []
    # => Enter the elements into array
    res = "y"

    while (res == "y") do
      puts "Enter the value for array "
      arr << gets.chomp
      puts "Enter y/n to continue/exit"
      res = gets.chomp
    end

    # => print original array
    puts "Array Contents #{arr.to_a}"
    flag = 0

    arr.select do |each_element|
      flag += 1 if (each_element.to_s.start_with?("ab", "AB", "Ab", "aB"))
    end

    if (flag.zero?)
      puts "None of the array element starts with ab/AB/Ab/aB"
    else
      puts "Elements starting with ab/AB/Ab/aB is = #{flag}"
    end
  end
end

# => call above instance method
CustomClass.new.get_initial













