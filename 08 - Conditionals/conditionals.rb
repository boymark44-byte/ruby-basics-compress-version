# The if statement
puts "The if statement: "

if 5 < 7
  puts "That math is true." # => "That math is true."
end

if 5 < 3
  puts "Something totally different." # => false
end

password = "topsecret"
if password == "topsecret"
  puts "Congrats, you've logged in!" # => "Congrats, you've logged in!"
end

word = "kangaroo"
if word.length == 8
  puts "Hooray, the word has 8 characters" # => "Hooray, the word has 8 characters"
  puts "Another line" # => "Another line"
end



# ================================================================================ #



# Predicate Methods in if-statements
puts "\nPredicate methods in if-statements: "

if 5.odd?
  puts "The number is indeed odd."
end

word = "kangaroo"
if word.include?("roo") # true
  puts "That substring does exist." # => "That substring does exist."
end

if word.include?("zebra") # false
  puts "That substring does exist."
end



# ==================================================================================== #



# Truthiness and Falsiness in Ruby
puts "\nTruthiness and Falsiness in Ruby: "

if 5 # truthy value, no exceptions raise
  puts "Will this print?"
end

if false # falsy value - false, nil
  puts "This will not print."
end

# if "Hello" # Raise an error
#   puts "Will this print?"
# end



# ================================================================================ #



# The if-elsif statement in Ruby
puts "\nThe if-elsif statement in Ruby: "

color = "Green"
#color = "Yellow"
#color = "Red"
#color = "color"

if color == "Red"
  puts "Red is rad"
elsif color == "Yellow"
  puts "Yay for yellow"
elsif color == "Green"
  puts "Green is great"
else
  puts "Invalid color"
end

puts

number = 40
#number = 10
#number = 65
#number = 100_000_000

if number < 25
  puts "That's a small number"
elsif number < 50
  puts "That's a medium size number"
elsif number < 75
  puts "That's a big number"
elsif number < 150
  puts "That number is equal to Godzilla"
else
  puts "That's an invalid number mate"
end

puts

# Syntactically correct but semantically wrong. Not ideal.
if number < 25
  puts "First condition is true"
elsif color == "Green"
  puts "Second condition is true"
end



# ========================================================================================= #



# The if-and-else statement in Ruby:
puts "\nThe if-and-else statement in Ruby: "

grade = "F" # Just change the value to execute the else block

if grade == "A"
  puts "Mom will be happy"
else
  puts "Mom will be upset"
end

puts

grade = "A"
if grade == "A"
  puts "Mom will be happy"
elsif grade == "B"
  puts "Mom will be disappointed but OK"
else
  puts "Mom will be upset"
end



# ====================================================================================== #



# Multiple conditions with AND operator
# && - indicates the AND logic
# works both with && or "and" operator

# puts "\nMultiple conditions with AND operator in Ruby: "

# puts "Please enter username: "
# username = gets.chomp
# puts "Please enter password: "
# password = gets.chomp

# if username == "rubydev1" and password == "topsecret" # true && true
#   puts "Congrat's, you've logged in!"
# else
#   puts "Incorrect, no access for you!"
# end



# ====================================================================================== #



# Multiple conditions with OR operator
# The "||" or "or" operator, both works.
puts "\nMultiple conditions with OR operator: "

entree = "Steak"
price = 19.99

if entree == "Steak" || price < 29.99
  puts "Atleast one of the conditons is true, purchasing meal."
end

puts

entree = "Steak"
price = 49.99

# We assign the boolean logic with descriptive variables to provide further context.
food_is_delicious = entree == "Steak"
meal_is_affordable = price < 29.99

if food_is_delicious or meal_is_affordable
  puts "Atleast one of the conditons is true, purchasing meal."
end



# ==================================================================================== #



# Parenthesis Precedence in Ruby:
puts "\nParenthesis Precedence in Ruby: "

def authenticate_agent(agent_num, name, job_title)
  if (agent_num == 007 and name == "James Bond") or job_title == "Secret Agent"
    puts "Access granted, please proceed to the intelligence department!"
  else
    puts "Access denied, #{name}!"
  end
end

authenticate_agent("007", "James Bond", "Secret Agent")
authenticate_agent("007", "James Bond", "HR Manager")
authenticate_agent("006", "Ethan Hunt", "Military") # Both should be false to trigger else



# ====================================================================================== #



# The nested if-statement in Ruby:
puts "\nThe nested if-statement in Ruby: "

# Recommended Meal Generator
# Time of Week | Time of Day | Meal
# weekdays      | morning     | Cereal
# weekdays      | night       | Chicken Nuggets.
# weekends      | morning     | French Toast
# weekends      | night       | Steak

def meal_plan(time_of_week, time_of_day)
  # Without Nesting:
  # if time_of_week == "weekdays" and time_of_day == "morning"
  #   "Cereal"
  # elsif time_of_week == "weekdats" and time_of_day == "night"
  #   "Chicken Nuggets"
  # end


  # With Nesting:
  if time_of_week == "weekdays"
    if time_of_day == "morning"
      "Cereal"
    elsif time_of_day == "night"
      "Chicken Nuggets"
    end
  else
    if time_of_day == "morning"
      "French Toast"
    elsif time_of_day == "night"
      "Steak"
    end
  end

end

puts meal_plan("weekdays", "morning") # => Cereal
puts meal_plan("weekdays", "night") # => Chicken Nuggets
puts meal_plan("weekends", "morning") # => French Toast
puts meal_plan("weekends", "night") # => Steak



# ============================================================================== #



# Ternary Operator (?) in Ruby
puts "\nTernary Operators in Ruby: "

# Traditional if-else condition
if 1 < 2 # true
  puts "Yes, it is" # => "Yes, it is"
else
  puts "No, it's not"
end

puts

# Using a Ternary Operator (?)
puts 1 < 2 ? "Yes, it is" : "No, it's not" # => "Yes, it is"

# Store it in a variable
ternary_logic = 1 < 2 ? "Yes, it is" : "No, it's not"
puts ternary_logic # => "Yes, it is"

puts "Yes".downcase == "yes" ? "Yes, they are equal" : "No, they are not" # => "Yes, they are equal"



# ====================================================================================== #



# Calling a method from another method in Ruby
puts "\nCalling a method from another method: "

# Defining a custom method-based calculator
def add(a, b)
  a + b
end

def sub(a, b)
  a - b
end

def mul(a, b)
  a * b
end

def div(a, b)
  a / b
end

# Calling a method from another method
def calculator(a, b, operation)
  if operation == "add"
    add(a, b)
  elsif operation == "subtract"
    sub(a, b)
  elsif operation == "multiply"
    mul(a, b)
  elsif operation == "divide"
    div(a, b)
  else
    "Invalid operation, please try again!"
  end
end

puts calculator(3, 5, "add") # => 8
puts calculator(2, 5, "subtract") # => -3
puts calculator(3, 5, "multiply") # => 15
puts calculator(20, 4, "divide") # => 5



# ================================================================================== #



# The case statement in Ruby:
puts "\nThe case statement in Ruby: "

# Same object or input value but with different variations and outcomes.
# A shortcut for if-elsif statements.

def rate_my_food(food)
  # Using the traditional if-elsif-else statement
  # if food == "Steak"
  #   "Expensive"
  # elsif food == "Sushi"
  #   "Very Japanese"
  # elsif food == "Burritos"
  #   "Taste like Mexican"
  # elsif food == "Quesadillas"
  #   "Mexican food again"
  # elsif food == "Yogurt"
  #   "Wow, good bacteria"
  # else
  #   "Please pick a food for goodness sake"
  # end

  # Using a case statement
  case (food)
  when "Steak"
    "Delicious! Pass the steak sauce."
  when "Sushi"
    "Awesome, pass the wasabi."
  when "Tacos", "Burritos", "Quesadillas"
    "Cheesy and filling! The perfect combination!"
  when "Tofu", "Brussels Sprouts"
    "Disgusting! Yuck!"
  else
    "I don't know about that food item"
  end

end

puts rate_my_food("Steak")
puts rate_my_food("Sushi")
puts rate_my_food("Burritos")
puts rate_my_food("Quesadillas")
puts rate_my_food("Yogurt")



# ================================================================================== #



# The unless keyword in Ruby
puts "\nThe unless statement in Ruby: "

# Execute if false, unlike the if-statement where you execute the logic if the condition is true
# The inverse of an if or if-else statements.


password = "nonsense"

# An "if-else" statement:
if password != "whiskers"
  puts "Incorrect password!"
else
  puts "Welcome to the system!"
end

puts

# Using the "unless" statement:
unless password == "whiskers"
  puts "Incorrect password!"
end

puts

unless password.include?("a")
  puts "This will run \"unless\" password include \"a\""
end



# ================================================================================== #



# Statement Modifiers in Ruby
# A short-hand syntax for if-statement
puts "\nStatement Modifiers in Ruby: "

number = 10_000

# Using an if-statement:
if number > 5_000 # true
  puts "That's a huge number" # => "That's a huge number"
end

puts

# Using a statement modifier:
puts "That's a huge number" if number > 5_000 # => "That's a huge number"

puts

# With multiple-conditions applied:
number = 10_0000
verified = true

puts "That's a huge number" if number > 5_000 && verified

puts

# Applied to an unless statement:
another_number = 8

puts "another_number is NOT greater than 10" unless another_number > 10



# ================================================================================== #


# Conditional Assignment Operator (||=) in Ruby:
puts "\nConditional Assignment Operator (||=) in Ruby:"

# A variable should have a value of nil first, then it assigns a new value to that variable
# given that the condition is met, otherwise, no action is made.

my_value = nil
p my_value # => nil

puts

my_value ||= 5
p my_value # => 5

puts

my_value ||= 10
p my_value # => 5
