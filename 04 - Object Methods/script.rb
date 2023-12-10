# Integer Methods
puts "Integer Methods: "

puts 10.next # => 11
puts -1.next # => 0

puts 10.succ # => 11
puts 10.pred # => 9
puts -1.pred # => -2

actor = "Stallone"
puts actor.length # => 8
puts actor.upcase # => "STALLONE"

# ====================================================== #



# Intro to Object Methods
puts "\nIntro to Object Methods: "

puts "Hello world".length # => 10
puts "Hello world".upcase # "HELLO WORLD"
puts "TOTALLY DIFFERENT".downcase # "totally different"

expression = "TOTALLY DIFFERENT"
puts expression.downcase # => "totally different"

# ======================================================= #



# Method Chaining in Ruby
puts "\nChaining Methods in Ruby: "

puts "Hi there".upcase.length.succ # => 9
puts 10.next.next.pred # => 11

# ======================================================== #



# 
