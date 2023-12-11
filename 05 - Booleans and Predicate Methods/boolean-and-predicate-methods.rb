# Comming Arithmetic Operations
puts "Common Arithmetic Operations: "
puts 1 + 2 # => 3
puts 5 - 3 # => 2
puts 4 * 3 # => 12
puts 10 / 3 # => 3
puts 10 % 3 # => 1

puts

puts 1.+(2) # => 3
puts 5.-(3) # => 2
puts 4.*(3) # => 12
puts 10.div(3) # => 3
puts 10./(3) # => 3
puts 10.divmod(3) # => [3, 1]

puts

puts 13.0 / 5.0 # => 2.6
puts 13.0./(5.0) # => 2.6
puts 13.0./5.0 # => 2.6



# ======================================================================= #



# Float Methods in Ruby
puts "\nFloat methods in Ruby: "

# Round-down to nearest integer. Always return an integer.
p 10.5.floor # => 10
p 10.9.floor # => 10
p 10.9.floor.class # => Integer

puts

# Round-up to nearest inetegr. Always return an integer.
p 10.5.ceil # => 11
p 10.9.ceil # => 11
p 10.9.ceil.class # => Integer

puts

# Automatically rounds up or down a number and returns an integer or rounded-float object.
# If provided with an argument,
# it returns the no. of decimal digits based on the argument.
p 3.14159.round # => 3
p 3.86.round # => 4
p 3.8.round # => 4
p 3.2.round # => 3
p 3.14159.round(2) # => 3.14
p 3.14159.round(3) # => 3.141
p 3.14159.round(4) # => 3.1415
p 3.14159.round(3).class # => Float

puts

p 5.35.abs # => 5.35
p -5.35.abs # => 5.35
p 35.abs # => 35
p -35.abs # => 35



# ==================================================================== #



# Intro to Booleans
puts "\nIntro to Booleans in Ruby: "

puts true # => true
puts false # => false

puts 5 < 10 # => true
puts 10 > 12 # => false

handsome = true
stupid = false
puts handsome.class # => TrueClass
puts stupid.class # => FalseClass



# ==================================================================== #



# Mathematical Comparisons in Ruby
puts "\nMathematical comparisons in Ruby: "

puts 1 < 9 # => true
puts 10 < 5 # => false
puts 1 <= 5 # => true
puts 5 <= 5 # => true
puts 8 <= 5 # => false

puts

puts 10 > 5 # => true
puts -1 > -5 # => true
puts 12 > 20 # => false
puts 8 >= 5 # => true
puts 5 >= 5 # => true
puts 3 >= 5 # => false



# =================================================================== #



# Method with Arguments in Ruby
puts "\nMethods with Arguments in Ruby: "

puts "Big Mac".include?("B") # => true
puts "Big Mac".include?("B") # => true
puts "Big Mac".include?("z") # => false
puts "Big Mac".include?("b") # => false
#puts "Big Mac".include? # => ArgumentError Exception: No arguments provided
#puts "Big Mac".include?("A", "V", "C") # => ArgumentError Exception: Too many arguments provided

puts

puts "Double Whopper" # => "Double Whopper"
puts("Double Whopper", "Triple Whopper", "Quad Whopper")
=begin
=> "Double Whopper"
=> "Triple Whopper"
=> "Quad Whopper"
=end



# ===================================================================== #



# Methods with Multiple Arguments in Ruby
puts "\nMethods with multiple arguments in Ruby: "

puts 20.between?(10, 30) # => true
puts 20.between?(10, 15) # => false
puts 20.between?(10, 20) # => true
puts 20.between?(20, 30) # => true
puts 20.between?(24, 45) # => false
puts 20.between?(45, 20) # => false
puts 11.between?(15, 10) # => false

puts

puts 1.2.between?(1.1, 1.3) # => true
puts -10.between?(-13, -8) # => true
puts -8.3.between?(-9.5, -7.2) # => true



# ==================================================================== #



# Predicate Methods in Ruby
puts "\nPredicate methods in Ruby: "

puts 10.odd? # => false
puts 11.odd? # => true
puts 11.odd?.class # => TrueClass

puts

puts 1.even? # => false
puts 2.even? # => true
puts 1.even?.class # => FalseClass

puts

puts 10.positive? # => true
puts 10.negative? # => false
puts -8.positive? # => false
puts -8.negative? # => true



# ================================================================== #



# The Equality Operator "=="
puts "\nThe Equality Operator: "

puts 10 == 10 # => true
puts "handsome" == "pretty" # => false
puts 2 == 3 # => false

a = 10
b = 5
c = 10
puts a == b # => false

puts

puts "hello" == "hello" # => true
puts "hello" == "bicycle" # => false
puts "hello" == "HELLO" # => false
puts "hello" == "hello " # => false
puts "5" == "5" # => true
puts "5" == 5 # => false
puts "5".to_i == 5 # => true
puts "5" == 5.to_s # => true



# ===================================================================== #


# The Inequality operator "!="
puts "\nThe Inequality operator: "

puts 10 != 5 # => true
puts 10 != 10 # => false

puts

puts "Hello" != "Goodbye" # => true
puts "Hello" != "hello" # => true
puts "Hello" != "Hello " # => true
puts "Hello" != "Hello" # => false

puts

puts 5 != "5"  # => true
