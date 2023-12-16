# The each method in Ruby
puts "\nThe each method in Ruby: "

# A block - is a chunk of executable code that we attach to a method invocation
3.times { puts "I am currently iterating" } # =>

puts

# A block with a variable or sometimes referred to as "block variable"
3.times { |number| puts "I am currently iterating on a loop number #{number}" } # =>

puts

# A block with multiple-lines
4.times do |number|
  square = number * number
  puts "The current number is #{number} and its square is #{square}." # =>
end

puts

# A block with single-line and each method to iterate over an array
names = ["bo", "moe", "joe"]
names.each { |name| puts name.upcase } # =>

puts

# A block with multiple-lines and each method to iterate over an array
[1, 2, 3, 4, 5].each do |current_number|
  calculation = current_number * current_number
  puts "The square of #{current_number} is #{calculation}." # =>
end



# ================================================================================== #



# Filtering through elements with each method in Ruby
puts "\nFiltering through elements with each method in Ruby: "

fives = [5, 10, 15, 20, 25, 30, 35, 40]

# Iterate through each element 5 times using a multi-line block
fives.each do |current_element|
  puts current_element if current_element.even? # =>
end

puts

# Refactor code using a single-line block
fives.each { |current_number| puts current_number if current_number.even? } # =>

puts

# Insert into an empty array those numbers that are even
fives = [5, 10, 15, 20, 25, 30, 35, 40]
evens = [] # => (push or append numbers who are even in this empty array)

# Using a single-line block
fives.each { |current_number| p evens.push(current_number) if current_number.even? }



# ================================================================================== #



# The each within each or nested each in Ruby
puts "\nThe each within each or nested each in Ruby: "

shirts = ["Stripe", "Plain White", "Plaid", "Band"]
ties = ["Polka Dot", "Solid Color", "Boring"]

shirts.each do |shirt|
  # Iterate through each tie in ties array and combine with shirt
  ties.each do |tie|
    puts "OPTION A: #{shirt} shirt and #{tie} tie."
  end
end

puts

# Refactored Version:
shirts.product(ties).each do |shirt, tie|
  puts "OPTION A: #{shirt} shirt and #{tie} tie."
end



# ================================================================================== #



# A for loop in Ruby
puts "\nA for loop in Ruby: "

=begin
Syntax: for "element" in "iterable-data-structure" (e.g for number in numbers)

Note:
- A for loop leaves a remnant or data residue after execution.
- Most of the time, it isnt utilize by most Ruby devs because of its incovenience.
=end

# A sample for loop in Ruby
for number in [1, 2, 3, 4, 5]
  puts number
end

p number # => 5, a data residue that is left from the previous iteration

puts

# Using the each method to do the same operation
[1, 2, 3, 4, 5].each { |number| puts number } # => (no residue, far better)

puts

# Another for loop
for value in 1..10
  puts "Yay, we're iterating here!" # =>
  puts "We are currently on #{value}" # =>
end

p value # => 10, a data residue left from previous iteration

puts

# Accomplish the same operation using an each method
(1..10).each do |range_value|
  puts "Yay, we're iterating here!" # =>
  puts "We are currently on #{range_value}" # =>
end

# p range_value # => NameError, since the range_value only exist in an isolated block therefore there is no residue

# Therefore in conclusion, the each method is far superior and better when it comes to iterating elements in Ruby since
# it does not leave any data residue that may cause an error to our program.



# The each_with_index method in Ruby
puts "\nThe each_with_index method in Ruby: "

colors = ["Red", "Blue", "Green", "Yellow"]

# Using a single-line block
colors.each_with_index { |color, index| puts "The color for index position #{index} is #{color}." }

puts

# Using a multi-line block
[5, 10, 15].each_with_index do |number, index|
  puts "The number is #{number} and the index is #{index}."
end



# ================================================================================== #



# Iteration over array elements with while and until loop
puts "\nIteration over array elements with while and until loop: "

animals = ["Lion", "Zebra", "Baboob", "Cheetah"]

# Using a while loop
i = 0
while i < animals.length
  puts "The index is #{i} and the animal is #{animals[i]}." # =>

  i += 1
end

puts

# Using an until keyword
i = 0
until i == animals.length
  puts "The index is #{i} and the animal is #{animals[i]}." # =>

  i += 1
end



# ================================================================================== #



# The map and collect methods in Ruby
puts "\nThe map and collect methods in Ruby: "

# The map and collect method allows us to perform a consistent operation over array elements and automatically creates
# a designated array variable for it contrary to the usual convention of declaring an empty array first.

# Store the string length of every elements from birds array
birds = ["eagle", "sparrow", "pigeon", "hawk", "penguin"]

# Usual convention
bird_cage = []
birds.each { |bird| bird_cage << bird.length  }
p bird_cage # => [5, 7, 6, 4, 7]

puts

# Using a map method to accomplish the same operation
bird_cage = birds.map { |bird| bird.length }
p bird_cage # => [5, 7, 6, 4, 7]

puts

# Using a collect method to accomplish the same operation
bird_cage = birds.collect { |bird| bird.length }
p bird_cage # => [5, 7, 6, 4, 7]

puts

uppercased_birds = birds.map { |bird| bird.upcase }
p uppercased_birds # => ["EAGLE", "SPARROW", "PIGEON", "HAWK", "PENGUIN"]



# ================================================================================== #



# The select and reject methods in Ruby
puts "\nThe select and reject methods in Ruby: "

# The select method - filter array elements that satisfies a condition.
# The reject method - filter array elements that did not satisfy a condition.


# A palindrome - is a common programming exercise that receives a string as an input
# and returns a boolean value that determines that whether that string is the same backwards
# as it is forwards when reads or say.
words = ["racecar", "selfless", "senteces", "level"]

# Select the words that are palindrome
palindromes = words.select { |word| word == word.reverse }
p palindromes # => ["racecar", "level"]

puts

# Reject the words that are palindrome
palindromes = words.reject { |word| word == word.reverse }
p palindromes # => ["selfless", "senteces"]

puts

# Using select and reject at the same time
animals = ["cheetah", "cat", "lion", "elephant", "dog", "cow"]
p animals.reject { |animal| animal.include?("c") } # => ["lion", "elephant", "dog"]



# ================================================================================== #



# The partition method in Ruby
puts "\nThe partition method in Ruby: "


# The partition method - splits an array into two arrays based on matching or not matching a condition.

foods = ["Steak", "Vegetables", "Steak Burger", "Kale", "Tofu", "Tuna Steaks"]

# good_foods - food that includes the word "Steak"
# bad_foods - food that does not include the word "Steak"


# Using select and reject methods to solve the operation
good_foods = foods.select { |food| food.include?("Steak") }
bad_foods = foods.reject { |food| food.include?("Steak") }
p good_foods # => ["Steak", "Steak Burger", "Tuna Steaks"]
p bad_foods # => ["Vegetables", "Kale", "Tofu"]

puts

# Filtering using the partition method
# Automatically partition or separate the good_foods from the bad_foods into one array.
p foods.partition { |food| food.include?("Steak") } # => [["Steak", "Steak Burger", "Tuna Steaks"], ["Vegetables", "Kale", "Tofu"]]

puts

# Accomplish the same operation with declaration of a two separate variables
good_foods, bad_foods = foods.partition { |food| food.include?("Steak") }
p good_foods, bad_foods # => ["Steak", "Steak Burger", "Tuna Steaks"], ["Vegetables", "Kale", "Tofu"]



# ================================================================================== #



# The any? and all? predicate methods in Ruby
puts "\nThe any? and all? predicate methods in Ruby: "

# The any? method - check whether any array element satisfies a condition.
# The all? method - checks whether every array element satisfies a condition.

# Using the any? method
sports = ["soccer", "basketball", "baseball", "tennis", "golf"]
p sports.any? { |sport| sport.length == 8 } # => true
p sports.any? { |sport| sport.length == 12 } # => false

puts

# Using the all? method
p sports.all? { |sport| sport.length < 100 } # => true
p sports.all? { |sport| sport.length < 10 } # => false



# ================================================================================== #



# The find and detect methods in Ruby
puts "\nThe find and detect methods in Ruby: "

# The find and detect methods - checks any array element that satisfy a condition first over others and keep track of it.


# Returns all the array elements that satisfies the condition
words = ["dictionary", "refrigerator", "platypus", "microwave"]
p words.select { |word| word.include?("e") } # => ["refrigerator", "microwave"]

puts

# The find and detect methods
# Returns the only element that satisfies the condition first.
p words.find { |word| word.include?("e") } # => "refrigerator"
p words.detect { |word| word.include?("e") } # => "refrigerator"



# The index and find_index methods in Ruby
puts "\nThe index and find_index methods in Ruby: "

# The find and find_index methods - returns the index position of an array element.
colors = ["Red", "Blue", "Green", "Red"]

p colors.index("Green") # => 2
p colors.index("Red") # => 0
p colors.index("Orange") # => nil



# ================================================================================== #



# The include? predicate method in Ruby
puts "\nThe include? predicate method in Ruby: "

p "action".include?("act") # => true

puts

# If applied to an array
movie_genres = ["comedy", "action", "drama", "horror"]
p movie_genres.include?("drama") # => true
p movie_genres.include?("Drama") # => false
p movie_genres.include?("romance") # => false



# ================================================================================== #



# The max and min methods in Ruby
puts "\nThe max and min methods in Ruby: "

# The max method - returns the greatest value or element of an array.
# The min method - returns the smallest value or element of an array.

stock_prices = [434.12, 723.99, 84.12, 649.92]
p stock_prices.min # => 84.12
p stock_prices.max # => 723.99

puts

companies = ["Nike", "Microsft", "Apple", "Google"]
p companies.min # => "Apple"
p companies.max # => "Nike"

puts

p [].min # => nil
p [].max # => nil



# ================================================================================== #



# Unlimited method arguments in Ruby
puts "\nUnlimited method arguments in Ruby: "

# Define a method called `adder` that accepts any number of arguments.
# The method prints the arguments to the console and calculates the sum of the arguments.
# The sum is returned by the method.
#
# *Arguments*
# - `*numbers`: Any number of arguments.
#
# *Examples*
# ```
# p adder(1, 2, 3, 4, 5) #=> [1, 2, 3, 4, 5]\n15
# ```

def adder(*numbers)
  p numbers # => [1], [1, 2], [1, 2, 3], [1, 2, 3, 4, 5], []
  sum = 0
  numbers.each { |number| sum += number }
  sum
end

# Allows us to pass multiple arguments to the custom method
p adder(1) # => 1
p adder(1, 2) # => 3
p adder(1, 2, 3) # => 6
p adder(1, 2, 3, 4, 5) # => 15
p adder # => 0

puts

# With two required parameters and a dynamic variable called "*numbers"
def adder(a, b, *numbers)
  sum = 0
  numbers.each { |number| sum += number }
  sum
end

p adder(1, 2) # => a = 1, b = 2, numbers = [0]
p adder(1, 2, 3) # => a = 1, b = 2, numbers = [3]
p adder(1, 2, 3, 4, 5) # => a = 1, b = 2, numbers = [3, 4, 5]

puts

# With two added parameters from the beginning and after the dynamic variable called "*numbers"
def adder(a, b, *numbers, c, d)
  p numbers
  sum = 0
  numbers.each { |number| sum += number }
  sum
end

p adder(1, 2, 3, 4) # => a = 1, b = 2, numbers = [], c = 3, d = 4
p adder(1, 2, 3, 4, 5) # a = 1, b = 2, numbers = [3], c = 3, d = 5
p adder(1, 2, 3, 4, 5, 6) # => a = 1, b = 2, numbers = [3, 4], c = 5, d = 6
