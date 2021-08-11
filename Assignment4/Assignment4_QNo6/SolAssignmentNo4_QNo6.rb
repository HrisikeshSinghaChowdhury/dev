# => 6. Write a program to delete a specific key from a hash
class CustomClass
  def hash_delete_op
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
      var_hash.store(h_key, h_value)
      puts "------------------"
      puts "Enter y/n to continue/exit"
      res = gets.chomp
    end

    # => print original hash
    puts "Before modification of Hash   #{var_hash.to_hash}"
    # => input new hash key as string
    puts "Enter the new hash key"
    h_key = gets.chomp
    # => deleting from the existing hash
    var_hash.delete(h_key)
    var_hash.rehash
    # => after modification of hash and storing them in array
    puts "After removing Hash  #{var_hash}"
  end
end

# => call the instance method
CustomClass.new.hash_delete_op







