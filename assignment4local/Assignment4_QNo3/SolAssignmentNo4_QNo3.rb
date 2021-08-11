# => 3. Write a program to convert each key value as
# => separate hash and return an array of hashes.
# => eg: Input: {:a => 1, :b => 2, :c => 3}
# => Output: [{:a => 1}, {:b => 2}, {:c => 3}]
class CustomClass
  def get_hash_op
    # => create an empty hash
    var_hash = {}
    # => create an empty array
    arr = []
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
      var_hash.store(h_key, h_value)
      arr.push(var_hash)
      var_hash = {}
      puts "------------------"
      puts "Enter y/n to continue/exit"
      res = gets.chomp
    end

    # => after modification of hash and storing them in array
    puts "After modification of Hash and storing into array #{arr}"
  end
end

# => call the instance method
CustomClass.new.get_hash_op






