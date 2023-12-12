# Single-Quotes and Double-Quotes in Ruby
puts "Single-Quotes and Double-Quotes in Ruby: "

puts "hello\n\n\nworld" # => Not-literal
puts 'hello\n\n\nworld' # => literal: 'hello\n\n\nworld'

# Taking every single-quote literally, no escape characters allowed.
puts 'C:\Documents\news' # Useful for file reading, manipulating, deletion, etc...

puts

phrase = "Hello world"
puts "My phrase is #{phrase}"
puts 'My phrase is #{phrase}'



# ================================================================================== #



# Multi-line Strings in Ruby
puts "\nMulti-line Strings in Ruby: "

poetry = <<MLS
  What a beautiful language Ruby is
  It allows you to write multiple lines
  Split your words up across mutliple lines
  Everything still looks nice and fine.
  - Shakespeare
MLS

puts poetry # => (Prints the poem)



# ================================================================================== #



# String Comparisons in Ruby
puts "\nString Comparisons in Ruby: "

a = "Hello"
b = "hello"
c = "Hello"

puts a == b # => true
puts a == c # => true
puts a == b # => true
puts b == "hello" # => true

puts

puts a != b # => true
puts a != c # => false

puts

# Follow the order in Alphabet
puts "A" < "B" # => true
puts "A" < "Z" # => true
puts "H" < "E" # => false

puts

puts "L" > "F" # => true
puts "L" > "M" # => false

puts

# Uppercase has greater precedence than lowercase characters
puts "Z" < "a" # => true
puts "a" < "z" # => true
puts "a" < "A" # => false

puts
# Evaluate, character by character, follow the establish precedence from the alphabet
puts "hello" < "help" # => true



# ================================================================================== #



# String Concatenation Options in Ruby
puts "\nString Concatenation Options in Ruby: "

# Concatenating Strings through (+) operator
first_name = "Harry"
last_name = "Potter"

puts first_name + last_name # => HarryPotter
puts last_name + first_name # => PotterHarry

puts first_name # => "Harry"
puts last_name # => "Potter"

puts

# Concatenating Strings through methods
# Usually, method invocations are complete modify or alter the value or the object of the variable.
first_name.concat(last_name)
puts first_name # => "HarryPotter"

puts first_name # => "HarryPotter" - altered, modified, or mutated the object reference from this variable.

puts first_name.prepend(last_name) # => "PotterHarryPotter"
puts first_name

puts

# Concatenating Strings through the Shovel Operator "<<"
# Works the same as concate method
wrestler = "Stone Cold "
puts wrestler # => "Stone Cold "

wrestler << "Steve Austin " << "WWF Champion "
puts wrestler # => "Stone Cold Steve Austin WWF Champion"



# ================================================================================== #



# The length and size methods in Ruby
puts "\nThe length and size methods in Ruby: "

puts "hello world".length # => 11
puts "   # # $ $@$ @#  ".length # => 17
puts "".length # => 0

puts

# Another name for length method
puts "hello world".size # => 11
puts "   # # $ $@$ @#  ".size # => 17
puts "".size # => 0



# ================================================================================== #



# Intro to Index Positions in Ruby
puts "\nIntro to Index Positions in Ruby: "

story = "Once upon a time"

# Extracting a character by its index position using bracket syntax
puts story[0] # => o
puts story[1] # => n
puts story[2] # => c
puts story[3] # => e
puts story[4] # => "space"
p story[100] # => nil

puts

# Extracting a character through negative indexing using bracket syntax
puts story[-1] # => e
puts story[-2] # => m
puts story[-3] # => i
puts story[-10] # => p
p story[-100] # => nil

puts

# Extracting a character through slice method
puts story.slice(0) # => O
puts story.slice(3) # => e
puts story.slice(-11) # => u
p story.slice(4000) # => nil
p story.slice(-4000) # => nil



# ================================================================================== #



# Extracting multiple characters from a string
puts "\nExtracting multiple characters from a string: "

story = "Once upon a time in a land far, far away..."

# variable[starting-index, no. of char to pull]
puts story[5, 4] # => "upon"
puts story[0, 5] # => "Once"
puts story[0, story.length] # => "Once upon a time in a land far, far away..."
puts story[-7, 5] # => "away."

puts

# Using the slice method
puts story.slice(5, 4) # => "upon"
puts story.slice(0, 5) # => "Once"
puts story.slice(0, story.length) # => "Once upon a time in a land far, far away..."
puts story.slice(-7, 5) # => "away."



# ================================================================================== #



# Overwriting Characters in a String in Ruby
puts "\nOverwriting Characters in a String in Ruby: "

thing = "rocket ship"

# Replace the character from that index position with a new one
thing[0] = "p"
puts thing

thing[1] = "a"
puts thing

thing[9] = "o"
puts thing

puts

# Overwrite a string with multiple characters
fact = "I love blueberry pie"

# Overwrite "blue" with "rasp", "cherry", and "red"
# Ruby automatically adjust if the given replacement does not
# align with the provided argument or no. of strings to replace

fact[7, 4] = "rasp" # => "I love raspberry pie"
#fact[7, 4] = "cherry" # => "I love cherryberry pie"
#fact[7, 4] = "red" # => "I love redberry pie"

puts fact



# ================================================================================== #



# Inserting a character in Ruby through insert method:
puts "\nInserting a character in Ruby through insert method: "

typo = "GeorgWashington"

# insert(starting-index, char to insert)
typo.insert(5, "e ")
puts typo # => "George Washington"

puts

typo = "George Washingto"
typo.insert(-1, "n")
puts typo # => "George Washington"

puts typo # => "George Washington"



# ================================================================================== #



# The empty and nil methods in Ruby
puts "\nThe empty and nil methods in Ruby: "

# The empty? predicate method
puts "".empty? # => true
puts "abc".empty? # => false
puts "".empty? # => true

puts

# The nil? predicate method?
puts "hello".nil? # => false
puts 5.nil? # => false

something = nil
puts something.nil? # => true



# Character Case Methods in Ruby:
puts "\nCharacter Case Methods in Ruby: "

puts "Eiffel Tower".upcase # => "EIFFEL TOWER"
puts "Eiffel Tower".downcase # => "eiffel tower"

puts

# Inverts the current case of our String or Characters
puts "Eiffel Tower".swapcase # => "eIFFEL tOWER"

puts

# Returns a new string with the first letter being capitalized
puts "eiffel tower".capitalize # => "Eiffel tower"
puts "EIFFEL TOWER".capitalize # => "Eiffel tower"

puts

tourist_hotspot = "Eiffel Tower"
puts uppercased_hotspot = tourist_hotspot.upcase # => "EIFFEL TOWER"

puts tourist_hotspot # => "Eiffel Tower"

# Note: None of these methods alter, modify, or mutated our object.



# ================================================================================== #



# The reverse method in Ruby:
puts "\nThe reverse method in Ruby: "

puts "Ruby".reverse # => "ybuR"
puts "321".reverse # => 123
puts "!@#$%^".reverse # => "^%$#@!"



# ================================================================================== #



# The bang method in Ruby
# Ends with an exclamation symbol "!"
# Performs some kind of mutation which modify or alters the object that the method is invoked upon.
puts "\nThe bang method in Ruby: "

word = "spaghetti"
puts word.capitalize # => "Spaghetti"
puts word # => "spaghetti", did not alter the object in which the variable is reference from

puts

# The bang method alters or mutate the object where it is invoked upon.
word = "spaghetti"
puts word.capitalize! # => "Spaghetti"
puts word # => "Spaghetti"

puts

word.upcase!
puts word # => "SPAGHETTI"

puts

word.downcase!
puts word # => "spaghetti"

puts

word.reverse!
puts word # => "ittehgaps"

puts
word.swapcase!
puts word # => "ITTEHGAPS"
