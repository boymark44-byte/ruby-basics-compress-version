# The split method in Ruby
puts "\nThe split method in Ruby: "
sentences = "Hi, my name is Boris. My favorite hobby is coding!"

p sentences.split # => ["Hi,", "my", "name", "is", "Boris.", "My", "favorite", "hobby", "is", "coding!"]
p sentences.split(" ") # => ["Hi,", "my", "name", "is", "Boris.", "My", "favorite", "hobby", "is", "coding!"]
p sentences.split(".") # => ["Hi, my name is Boris", " My favorite hobby is coding!"]
p sentences.split("o") # => ["Hi, my name is B", "ris. My fav", "rite h", "bby is c", "ding!"]

puts

sentences.split(" ").each do |word|
  puts "Currently, I'm on the word #{word}!"
  puts "It has #{word.length} characters."
end

=begin
Currently, I'm on the word Hi,!
It has 3 characters.
Currently, I'm on the word my!
It has 2 characters.
Currently, I'm on the word name!
It has 4 characters.
Currently, I'm on the word is!
It has 2 characters.
Currently, I'm on the word Boris.!
It has 6 characters.
Currently, I'm on the word My!
It has 2 characters.
Currently, I'm on the word favorite!
It has 8 characters.
Currently, I'm on the word hobby!
It has 5 characters.
Currently, I'm on the word is!
It has 2 characters.
Currently, I'm on the word coding!!
It has 7 characters.
=end



# ================================================================================== #



# The chars and each_char method in Ruby
puts "\nThe chars and each_char method in Ruby: "

vehicle = "Spaceship"

# Using the split method:
characters = vehicle.split("")
p characters # => ["S", "p", "a", "c", "e", "s", "h", "i", "p"]

puts

# Using the each method:
characters.each { |character| puts "#{character} is awesome" } # => S is awesome, p is awesome, ... ,

puts

# Using the chars method:
characters = vehicle.chars
p characters # => ["S", "p", "a", "c", "e", "s", "h", "i", "p"]

puts

# Using the each_char method:
vehicle.each_char { |character| puts "#{character} is awesome" } # => S is awesome, p is awesome, ... ,



# ================================================================================== #



# The join method on an array in Ruby
puts "\nThe join method on an array in Ruby: "

# The join method - merges array elements into a string with an optional use of a delimiter.

registrants = ["Jake", "Mikey", "Hannah"]

# Without using a delimiter
p registrants.join # => "JakeMikeyHannah"

puts

# Using a delimiter called "-"
p registrants.join("-") # => "Jake-Mikey-Hannah"
p registrants.join("!*!") # => "Jake!*!Mikey!*!Hannah"
p registrants.join(", ") # => "Jake, Mikey, Hannah"



# ================================================================================== #



# The count method on a string in Ruby
puts "\nThe count method on a string in Ruby: "

# The count method - counts the number of occurrences a particular character(s) appear on a string.

puts "Hello World".count("l") # => 3
puts "Hello World".count("w") # => 0
puts "Hello World".count("lo") # => l is 3 and o is 2 => 5
puts "Hello World".count("WL") # => 1



# ================================================================================== #



# The index and rindex methods in Ruby
puts "\nThe index and rindex methods in Ruby: "

# The index method - returns the index position of a substring that occurred first based on the provided argument.

fact = "I am very handsome."

p fact.index("I") # => 0
p fact.index("e") # => 6
p fact.index("Z") # nil
p fact.index("am") # 2
p fact.index("and") # 11

puts

# Provide a second argument that allows us where to start
p fact.index("e", 0) # => 6
p fact.index("e", 3) # => 6
p fact.index("e", 6) # => 6
p fact.index("e", 7) # => 17

puts

# Making our last or rear-index as the starting-point in where to search
p fact.rindex("e") # => 17



# ================================================================================== #



# The delete method in Ruby
puts "\nThe delete method in Ruby: "

# The delete method - remove a certaon character(s) from a string.

p "cottage cheese".delete("c") # => "ottage heese"
p "cottage cheese".delete("e") # => "cottag chs"
p "cottage cheese".delete("ce") # => "ottag hs"
p "cottage cheese".delete("ec") # => "ottag hs"
