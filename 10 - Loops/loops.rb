# Loops - a series of instructions that is repeated until a terminating conditions is reached.


3.times { print "Hello" } # => "HelloHelloHello"

puts

puts "The while loop: "

# An infinite loop:
# count = 0

# while count < 10
#   puts count
# end

puts

count = 1

while count < 10
  puts count

  count += 1 # Updates the value of count to avoid an infinite loop to occur
end

puts

puts count # => 10

puts

letters = "a"

while letters.length < 5
  puts letters

  # Shovel operator "<<" mutates the original string
  letters << "a"
end

puts

# General Syntax of a while-loop
=begin
while true
  # Loop Body

  # A logic that would update the value of an iterator or terminate the loop completely
end
=end



# ================================================================================== #


# The while loop - executes a condition while it is true
# The until loop - executes a condition body until it is true
puts "\nThe until loop: "

i = 1

until i > 9
  puts i

  i += 1
end

puts

puts i



# ================================================================================== #


# The FizzBuzz game:
puts "\nThe FizzBuzz Game: "

# FizzBuzz is a popular programming problem to test a developer's
# ability to think logically with code.
#
# The problem is simple but deceptive.
#
# Define a fizzbuzz method that accepts a single number.
# The method should output every number from 1 to that argument.
#
# There are a couple caveats.
# If the number is divisible by 3, output "Fizz" instead of the number.
# If the number is divisible by 5, output "Buzz" instead of the number.
# If the number is divisible by both 3 and 5, output "FizzBuzz" instead of the number.
# If the number is not divisible by either 3 or 5, just output the number.
#
# Example: fizzbuzz(30) should print:
#
# 1
# 2
# Fizz
# 4
# Buzz
# Fizz
# 7
# 8
# Fizz
# Buzz
# 11
# Fizz
# 13
# 14
# FizzBuzz
# 16
# 17
# Fizz
# 19
# Buzz
# Fizz
# 22
# 23
# Fizz
# Buzz
# 26
# Fizz
# 28
# 29
# FizzBuzz


# My own solution:
def fizzbuzz(num)
  i = 1

  while i <= num
    if i % 3 == 0 and i % 5 == 0
      puts "FizzBuzz"
    elsif i % 3 == 0
      puts "Fizz"
    elsif i % 5 == 0
      puts "Buzz"
    else
      puts i
    end
    # Update the iterator "i"
    i += 1
  end
end

p fizzbuzz(30) # =>


puts


# Instructor Solution:
def fizzbuzz(number)
  i = 1

  while i <= number
    if i % 3 == 0 and i % 5 == 0
      puts "FizzBuzz"
    elsif i % 3 == 0
      puts "Fizz"
    elsif i % 5 == 0
      puts "Buzz"
    else
      puts i
    end
    # Update the logic iterator "i"
    i += 1
  end
end

p fizzbuzz(30) # =>



# ================================================================================== #


# The next keyword in Ruby
puts "\nThe next keyword: "


# The next keyword - automatically move to the next iteration of a loop.
money_sentence = "I love $ in the morning, $ in the afternoon, and $ at night."

current_index = 0 # Current index of the string
final_index = money_sentence.length - 1 # Last index of the string

while current_index <= final_index
  if money_sentence[current_index] == "$"
    puts "Found $ at index #{current_index}"
  end

  current_index += 1
end

puts

# Using the next keyword to solve the same challenge
money_sentence = "I love $ in the morning, $ in the afternoon, and $ at night."

current_index = 0 # Current index of the string
final_index = money_sentence.length - 1 # Last index of the string

while current_index <= final_index
  if money_sentence[current_index] != "$"
    current_index += 1
    next
  end

  puts "Found $ at index #{current_index}"
  current_index += 1
end


# ================================================================================== #



# The break keyword in Ruby:
puts "\nThe break keyword in Ruby: "

# The break keyword - terminates the loop completely.
# Goal: Find the first iteration of $ sign and terminates the program completely.

money_sentence = "I love $ in the morning, $ in the afternoon, and $ at night."

current_index = 0
final_index = money_sentence.length - 1
first_money_index = nil

while current_index <= final_index
  if money_sentence[current_index] == "$"
    first_money_index = current_index
    break
  end

  current_index += 1
end

puts first_money_index # => 7



# ================================================================================== #



# Recursion I in Ruby:
puts "\nRecursion I in Ruby: "

# Recursion - is when a method calls itself.
# Base Case - is a condition that tells the recursion to stop.

# Example: Factorials
# 5! = 5 * 4 * 3 * 2 * 1 = 120

# 5 * 4!
#     4 * 3!
#         3 * 2!
#             2 * 1!

# 4! = 4 * 3 * 2 * 1    = 24
# 3! = 3 * 2 * 1        = 6
# 2! = 2 * 1            = 2
# 1!                    = 1

# This function calculates the factorial of a given number recursively:
def factorial(number)
  # Base Case: if a number is 1, return 1
  return 1 if number == 1

  # Recursive Case: multiply the number with the factorial of (number - 1)
  number * factorial(number - 1)
end

puts factorial(5) # => 120
puts factorial(6) # => 720

=begin

The underlying process for factorial(5):
First Layer: 5 * factorial(4)
Second Layer: 4 * factorial(3)
Third Layer: 3 * factorial(2)
Fourht Layer: 2 * factorial(1)
Third Layer: 3 * factorial(2)
Fifth Layer: 1

=end



# ================================================================================== #



# Recursion II in Ruby:
puts "\nRecursion II in Ruby: "

# Reversing a string using reverse method
puts "straw".reverse # => "warts"

=begin
Creating our own reverse method with iteration-based solution.

- The following code defines a function that takes a string as an argument
and returns the reverse of that string.
- The function uses a while loop to iterate through the string from the
last character to the first character.
- It then concatenates each character to a new string, which is returned
as the reversed string.

The code is as follows:
=end
def reverse(text)
  first_index = 0
  last_index = text.length - 1
  reversed_text = ""

  while last_index >= first_index
    reversed_text += text[last_index]

    last_index -= 1
  end

  reversed_text # Returns the segmented reversed text
end

puts reverse("straw") # => "warts"

puts

# Creating our own reverse method with recursion-based approach:
def reverse(text)
  # Base Case: If the text.length == 1, return the text itself
  return text if text.length == 1

  # Assign the last character of the text
  last_character = text[-1]

  # Assign the remainder of the text excluding the last character
  remainder_string = text[0, text.length - 1]

  # Recursively call the reverse method with the remainder_string as an argument and concatenate the last_character
  last_character + reverse(remainder_string)
end

# The underlying process:
# reverse("straw")
#   w + reverse("stra")
#     a + reverse("str")
#       r + reverse("st")
#         t + s   (we can use the s as our base case)

puts reverse("straw") # => "warts"
