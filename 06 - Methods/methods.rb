# Method Definition in Ruby
puts "Method definition in Ruby: "

def introduce_myself
  puts "I am handsome!"
  puts "I am talented!"
  puts "I am brilliant!"
end

puts "I am a genius" # => "I am a genius"

# Method Calling
introduce_myself # => Returns the puts statement of this method invocation.
introduce_myself # => Returns the puts statement of this method invocation.



# ====================================================================== #



# Local variables in Ruby
puts "\nLocal variables in Ruby: "

hello = 5 # A local variable
action_star = "Jean Claude Van Damme" # A global variable

def film_movie
  action_star = "Arnold Schwarzenegger"
  puts action_star
end

film_movie # => "Arnold Schwarzenegger"

puts action_star # => "Jean Claude Van Damme"
puts action_star # => "Jean Claude Van Damme"



# ======================================================================= #



# Manipulating Arguments
puts "\nManipulating Arguments: "

def praise_person(name, age)
  puts "#{name.upcase} is amazing."
  puts "#{name} is charming."
  puts "#{name} is talented."
  puts "He is #{age + 5} years old."
end

praise_person("Mark Glenn Gabuya", 24)



# ===================================================================== #



# Multiple Parameters in Ruby
puts "\nMultiple Parameters in Ruby: "

def praise_person(name, age)
  puts "#{name} is amazing."
  puts "#{name} is charming."
  puts "#{name} is talented."
  puts "He is #{age} years old."
  puts
end

praise_person("Mark Glenn M. Gabuya", 24)
praise_person("Boris Greyrat", 31)
praise_person("John Doe", 25)

puts

puts 10.between?(20, 30) # => false



# ============================================================= #



# Optional Parameters and Default Arguments in Ruby
=begin
Optional Parameters - are parameters that has pre-defined value if no argument
is provided when invoke.
=end

puts "\nOptional Parameters and Default Arguments in Ruby: "

def title_assigner(name, suffix = "the Great.")
  "#{name} #{suffix}"
end

puts title_assigner("Boris", "the Wonderful.")
puts title_assigner("Dave")



# ============================================================== #



# Parameters and Arguments in Ruby
puts "\nParameters and Arguments in Ruby: "

def praise_person(name)
  puts "#{name} is amazing."
  puts "#{name} is charming."
  puts "#{name} is talented."
  puts
end

praise_person("Mark Glenn")
praise_person("Boris")
praise_person("John")

#praise_person # => An Exception occurs called "ArgumentError" due to lack of arguments provided as specified during definition.



# ============================================================================= #



# Return Values I in Ruby
puts "\nReturn Values I in Ruby: "

def add_two_numbers(num1, num2)
  puts "Ok, I'm solving your math problem."

  #return "Just kidding, I'm a troll!" # Automatically end the execution of the method and return a value.

  return num1 + num2 # Automatically end the execution of the method and return a value.
end

p add_two_numbers(23, 23) # => 46

result = add_two_numbers(1 + 3, 4 + 5)
p result # => 13

sum = add_two_numbers(4, 5)
p sum # => 9



# ================================================================================== #



# Return Values II: Implicit Return Values in Ruby.
puts "\nReturn Values II: Implicit Return Values in Ruby."

def nothing
end

p nothing # => nil
p nothing.class # => NilClass

puts

def add_two_numbers(num1, num2)
  # Implicitly return the sum of num1 and num2.
  # Ruby automatically interprets the last line of the method as the return statement and returns a value.
  num1 + num2
end

puts add_two_numbers(3, 4) # => 7
sum = add_two_numbers(4, 5)
p sum # => 9
p sum.class # => Integer

puts

def nothing
  puts "What will be the return value here?" # => "What will be the return value here?"
  # => nil
end

p nothing # => ["What will be the return value here?", nil]
