# Basic Assignment and Assignment Shortcuts in Ruby:
puts "Basic Assignment and Assignment Shortcuts in Ruby: "

a = 10
a += 7
puts a # => 17

b = 100
b -= 40
puts b # => 60

c = 3
c *= 4
puts c # => 12

d = 50
d /= 5
puts d # => 10

name = "Boris"
name += " The Great"
puts name # => Boris The Great



# ==================================================================== #



# Constants in Ruby:
puts "\nConstants in Ruby: "
PI = 3.14159
TAX_RATE = 0.07
puts PI
puts TAX_RATE

TAX_RATE = 0.13
puts TAX_RATE



# ===================================================================== #



# Declaring Variables in Ruby:
puts "\nDeclaring variables in Ruby: "

age = 31
puts age # => 31

name = "Boris"
last_name = "Danger"
puts name # => Boris
puts last_name # Danger

puts age + 7 # => 31
puts name + last_name # => BorisDanger

age = 35
puts age # => 35

age_in_ten_years = age + 10
puts age_in_ten_years # => 45

age = age + 7
puts age # => 42

chameleon = 24
chameleon = "Some random text"
chameleon = 3.14
puts chameleon # Returns 3.14



# ======================================================================== #



puts "\nNameError Exception: "

favorite_food = "Sushi"
#puts favorite_foo # Returns a NameError Exception

puts favorite_food



# ======================================================================= #



# Parallel variable assignement
puts "\nParallel variable assignment: "

a = 10
b = 20
c = 30
puts a, b, c

a, b, c = 10, 20, 30
puts a, b, c
p a, b, c
print a, b, c



# ======================================================================= #



# Swapping variable values
puts "\nSwapping variable values: "

a = 1
b = 2
puts a, b # => 1, 2

a, b = b, a
puts a, b # => 2, 1 
