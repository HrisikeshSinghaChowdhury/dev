# => 4. Write a program to convert
# => { a: 'e', b: 'm', c: nil, d: 'q' } to
# => [[:a, "e"], [:b, "m"], [:c, nil], [:d, "q"]]
class CustomClass
  def get_hash_op
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
      h_value = gets.chomp
      # => inserting into the hash
      var_hash.store(h_key, h_value)
      puts "------------------"
      puts "Enter y/n to continue/exit"
      res = gets.chomp
    end

    # => print original hash
    puts "Before modification of Hash #{var_hash.to_h}"
    # => after modification of hash and storing them in array
    puts "After modification of Hash and storing into array #{var_hash.to_a}"
  end
end

# => call the instance method
CustomClass.new.get_hash_op







