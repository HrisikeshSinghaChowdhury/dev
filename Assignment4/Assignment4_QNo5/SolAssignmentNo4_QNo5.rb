# => 5. Write a program to add new key value to an existing hash

def hash_add_op
  # => create an empty hash
  var_hash = Hash[]
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
  puts "Before modification of Hash   #{var_hash.to_hash}"
  # => input new hash key as string
  puts "Enter the new hash key"
  h_key = gets.chomp
  # => input new hash value as integer
  puts "Enter the new hash value"
  h_value = gets.chomp.to_i
  # => inserting into the existing hash
  var_hash.store(h_key,h_value)
  var_hash.rehash
  # => after modification of hash and storing them in array
  puts "After adding Hash  #{var_hash}"
end

# => calling the above hash normal method
self.hash_add_op




