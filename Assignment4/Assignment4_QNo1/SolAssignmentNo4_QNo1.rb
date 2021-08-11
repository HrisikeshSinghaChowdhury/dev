# => 1. Write a program to generate a hash from a given hash
# => where the value of each key will be multiplied with 2
# => eg: Input: { a: 12, b: 13, c: nil, d: 10 }
# => Output: { a: 24, b: 26, c: nil, d: 20 }
class CustomClass
  def hash_op
    # => create an empty hash
    var_hash = {}
    # => Enter the elements into hash
    res = "y"

    while (res == "y") do
       # => input hash key as string
       puts "Enter the hash key"
       h_key = gets.chomp
       # => input hash value as integer
       puts "Enter the hash value"
       h_value = gets.chomp.to_i
       # => inserting into the hash
       var_hash.store(h_key,h_value)
       puts "------------------"
       puts "Enter y/n to continue/exit"
       res = gets.chomp
    end

    # => print original hash
    puts "Before modification of Hash   #{var_hash.to_h}"

    var_hash.each_pair do |k, v|
      var_hash[k] = v * 2
    end
    # => after modification of hash
    puts "After modification of Hash   #{var_hash.to_h}"
  end
end

# => call the instance method
CustomClass.new.hash_op





