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



# Methods to convert objects
puts "\nMethods to convert objects in Ruby: "

text = 5
puts text # => 5
puts text.class # => Integer
puts text.to_i # => 5
puts text.to_i.class # => Integer

puts "15 apples".to_i # => 15
puts "apples 15".to_i # => 0
puts "nonsense".to_i # => 0

puts text.to_f # => 5.0
puts text.to_f.class # => Float

puts

number = 5
puts number.class # => Integer
puts number.to_s # => "5"
puts number.to_s.class # => String
puts number.to_f # => 5.0
puts number.to_f.class # => Float

puts

percentage = 0.9
puts percentage.class # => Float
p percentage.to_s # => "0.9"
puts percentage.to_s.class # => String

puts
p "5".to_s # => "5"
puts "5".to_s.class # => String
p 10.to_i # => 10
puts 10.to_i.class # => Integer
p 99.99.to_f # => 99.99
puts 99.99.to_f.class # => Float



# ============================================================= #



# String Interpolation in Ruby
puts "\nString Interpolation in Ruby: "

name = "Boris"
puts "Hello, #{name}, how old are you?"

age = 46
puts "I am #{age} years old."

puts "In 5 years, I will be #{age + 5} years old!"

x = 5
y = 8
puts "The sum of #{x} and #{y} is #{x + y}."



# ================================================================ #



# The Class Method in Ruby:
puts "\nThe class Method in Ruby: "

puts "Hello".class # => String
puts "Ruby is fun".class # => String
puts "12345".class # => String
puts "".class # => String

puts 5.class # => Integer
puts -23.class # => Integer
puts 100.class # => Integer
puts 999_999_999.class # => Integer

puts 3.14.class # => Float
puts 0.23.class # => Float
puts -10.49.class # => Float



# ============================================================= #



# The inspect method
puts "\nThe inspect method: "

p "Hello World\n"
puts "Hellor World\n"

puts "Hello World".inspect



# ============================================================= #



puts "\nThe nil object: "

puts nil # => nil

what_is_the_value_here = "hello".upcase
puts what_is_the_value_here # => "HELLO"

what_is_the_value_here = puts "hello"
p what_is_the_value_here # => "hello"
