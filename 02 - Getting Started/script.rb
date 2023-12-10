# Basic Arithmetic in Ruby
puts "Basic Arithmetic in Ruby: "
puts 1 + 4
puts -6 + 13

puts 10 - 6

puts 3 * 4 * 5

puts 2 + 3 * 5
puts (2 + 3) * 5

puts 10 / 5
puts 12 / 5

puts 12.0 / 5
puts 12 / 5.0
puts 12.0 / 5.0

puts 0.5 / 2

puts 5 % 2 # Returns 1
puts 7 % 2 # Returns 1
puts 6 % 2 # Returns 0



# ======================================================= #



# Comments in Ruby
# Single-line comment
=begin
This
is
a
multi-line
comment.
=end
puts "\nComments in Ruby: "
puts "This is not a comment, " # But this one is



# =========================================================== #



# Escape Characters in Ruby
puts "\nEscape Characters in Ruby: "
puts "Some text \n more text"
puts "\tOnce upon a time"

puts "Juliet said \"Goodbye\" to Romeo"
puts 'Juliet said \'Goodbye\' to Romeo'

puts "Juliet said 'Goodbye' to Romeo"
puts 'Juliet said "Goodbye" to Romeo'



# ============================================================= #



# Integers and Floating-point numbers in Ruby
puts "\nIntegers and Floating-point numbers in Ruby: "
puts 100
puts 0
puts -837

puts 1_000
puts 9_999_999_999_999_999

puts 3.14
puts 0.50
puts -10.99
puts -0.93



# ==================================================================== #



# Intro to Exceptions
puts "\nIntro to Exception: "
puts 3 + 4
puts "miss" + "fortune"
puts "Mark " << "Glenn " << "Gabuya"

#puts "4" + 3 # Logical or Type Error, cant add a string to an numerical value
#puts 3 + "4"

puts 30 / 10 # Line failed to run due to TypeError in line 93, uncomment to see.



# =================================================================== #



# String Concatenation in Ruby
puts "\nString Concatenation in Ruby: "
puts 4 + 3
puts "4" + "3"
puts "race" + "car"
puts "Mark " << "Glenn " << "Gabuya"



# =================================================================== #



# The p, print, and puts method in Ruby:
puts "\nThe p, print, and puts method in Ruby:"
p "Steven Seagal"
p 5
p "Hi there\nline break"

print "This random nonsense"
print " will continue on the same line.\n"

puts 1
puts 1 + 2
puts (1 + 2)

puts "Hello World"
puts "I'm alive and well"
puts 3.14159
puts # Use to invoke spaces or separation
puts "Afterwards"
puts 5
puts 3
puts 5
puts 5, 3, 5
puts
