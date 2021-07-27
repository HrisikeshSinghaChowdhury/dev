# => 2: Write a program to exchange key and value and generate a new hash
# => eg: Input: { a: 'e', b: 'm', c: nil, d: 'q' }
# => Output: { e: 'a', m: 'b', q: 'd' }

def hash_exchange_op
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

  var_output_hash = Hash.new(var_hash.size)
  # => print original hash
  puts "Before modification of Hash #{var_hash.to_h}"

  var_hash.each_pair do |k,v|
   var_output_hash.store(v,k)
  end

  # => after modification of hash
  puts "After modification of Hash #{var_output_hash.to_h}"
end

# => calling the above hash normal method
self.hash_exchange_op


