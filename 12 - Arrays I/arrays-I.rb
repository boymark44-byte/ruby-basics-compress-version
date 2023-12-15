# Intro to Arrays I in Ruby
puts "Intro to Arrays I in Ruby: "

# An array with 6 elements
numbers = [4, 8, 15, 16, 23, 42]
p numbers # =>

puts

# Valid but not advisable due to elements having various types
things = [4, true, "Hello", 10.99]
p things

puts

# An array is ideal for storing element with the same type
toys = ["Teddy Bear", "Water Gun", "Board Game"]
p toys

puts

registrations = [true, true, false, false, true, false]
p registrations



# ================================================================================== #



# Nested Arrays in Ruby
puts "\nNested Arrays in Ruby: "

# An array(s) within an array.
spreadsheet = [
  ["Student", "Class", "Grade"],
  ["Sally", "Computer Science", 95],
  ["Ingrid", "Physics", 45]
]

p spreadsheet # => (spreadsheet array)

puts

# Assigning each arrays into respective variables
first_row, second_row, third_row = spreadsheet[0], spreadsheet[1], spreadsheet[2]
p first_row # => ["Student", "Class", "Grace"]
p second_row # => ["Sally", "Computer Science", 95]
p third_row # => ["Ingrid", "Physics", 45]



# ================================================================================== #



# Short-hand syntax for defining an array in Ruby
puts "\nShort-hand syntax for defining an array in Ruby: "

# Usual way
names = ["Jack", "Jill", "John", "James"]
p names

puts

# Using short-hand syntax "%w[]" so that no need for double-quotes and commas for separation
names = %w[Jack Jill John James]
p names # => ["Jack", "Jill", "John", "James"]



# ================================================================================== #



# Access individual elements of an array with their index positions
puts "\nAccess individual elements of an array with their index positions: "

fruits = ["Apple", "Orange", "Grape", "Banana"]

# Using bracket syntax
puts fruits[0]
puts fruits[1]
puts fruits[2]
puts fruits[3]
p fruits[100] # => nil

puts

puts fruits[-1]
puts fruits[-2]
puts fruits[-3]
puts fruits[-4]
p fruits[-10] # => nil

puts

# Using slice method
puts fruits.slice(0)
puts fruits.slice(1)
puts fruits.slice(2)
puts fruits.slice(3)
p fruits.slice(10) # => nil

puts

puts fruits.slice(-1)
puts fruits.slice(-2)
puts fruits.slice(-3)
puts fruits.slice(-4)
p fruits.slice(-10) # => nil

puts

# Invoking square brackets to accomplish the same operation
puts fruits.[](0)
puts fruits.[](1)
puts fruits.[](2)
puts fruits.[](3)
p fruits.[](10) # => nil

puts

# Overwriting elements within an array through their index position
fruits = ["Apple", "Orange", "Grape", "Banana"]
p fruits # => ["Apple", "Orange", "Grape", "Banana"]

fruits[1] = "Watermelon"
p fruits # => ["Apple", "Watermelon", "Grape", "Banana"]

fruits[4] = "Raspberry"
p fruits # => ["Apple", "Watermelon", "Grape", "Banana", "Raspberry"]

fruits[10] = "Watermelon"
p fruits # => ["Apple", "Watermelon", "Grape", "Banana", "Raspberry", nil, nil, nil, nil, nil, "Watermelon"]



# ================================================================================== #



# Access array elements with fetch method
puts "\nAccess array elements with fetch method: "

airports = ["JFK", "LAX", "Heathrow"]

puts airports.fetch(2) # => "Heathrow"
puts airports.fetch(-2) # => "LAX"

puts

# Raise an Exception called "IndexError"
#puts airports.fetch(100)

puts airports.fetch(100, "Some Airport") # => "Some Airport"
puts airports.fetch(1, "Some Airport") # => "LAX"



# ================================================================================== #



# Access and Overwrite multiple-array elements with bracket syntax
puts "\nAccess and Overwrite multiple-array elements with bracket syntax: "

sesame_street = [
  "Elmo",
  "Big Bird",
  "Cookie Monster",
  "Bert",
  "Ernie",
  "Oscar"
]

# sesame_street[index-position, no. of elements to return]
p sesame_street[0, 3] # => ["Elmo", "Big Bird", "Cookie Monster"]
p sesame_street[2, 4] # => ["Cookie Monster", "Bert", "Ernie", "Oscar"]
p sesame_street[3, 1] # => ["Bert"]
p sesame_street[3, 10] # => ["Bert", "Ernie", "Oscar"]

puts

# Using slice method to accomplish the same results
p sesame_street.slice(0, 3) # => ["Elmo", "Big Bird", "Cookie Monster"]
p sesame_street.slice(2, 4) # => ["Cookie Monster", "Bert", "Ernie", "Oscar"]
p sesame_street.slice(3, 1) # => ["Bert"]
p sesame_street.slice(3, 10) # => ["Bert", "Ernie", "Oscar"]

puts

# Overwrite or Insert multiple elements using their index positions
sesame_street[3, 2] = ["Stinky", "Kermit"]
p sesame_street # => ["Elmo", "Big Bird", "Cookie Monster", "Stinky", "Kermit", "Oscar"]

sesame_street[3, 2] = ["Bert", "Ernie", "Julia"]
p sesame_street # => ["Elmo", "Big Bird", "Cookie Monster", "Bert", "Ernie", "Julia", "Oscar"]



# ================================================================================== #



# Access multiple array elements with values_at method
puts "\nAccess multiple array elements with values_at method: "

tv_channels = ["CBS", "UPN", "CW", "FOX", "NBC", "ESPN"]
p tv_channels.values_at(0) # => ["CBS"]
p tv_channels.values_at(0, 4) # => ["CBS", "NBC"]
p tv_channels.values_at(1, 3, 5) # => ["UPN", "FOX", "ESPN"]

puts

# Using negative values as arguments
p tv_channels.values_at(1, -1) # => ["UPN", "ESPN"]
p tv_channels.values_at(-1, 1) # => ["ESPN", "UPN"]

puts

# Return duplicate values
p tv_channels.values_at(3, 3) # => ["FOX", "FOX"]
p tv_channels.values_at(5, -1) # => ["ESPN", "ESPN"]

puts

# Returns nil for index positions that are invalid
p tv_channels.values_at(0, 1, 10) # => ["CBS", "UPN", nil]
p tv_channels.values_at(0, 1, 10, -100) # => ["CBS", "UPN", nil, nil]



# ================================================================================== #



# The first and last method in Ruby
puts "\nThe first and last method in Ruby: "

sushi = ["Salmon", "Tuna", "Shrimp", "Eel", "Yellowtail"]

# Using first method - returns the first element(s) of an array
p sushi.first # => "Salmon"
p sushi.first(4) # => ["Salmon", "Tuna", "Shrimp", "Eel"]
p sushi.first(3) # => ["Salmon", "Tuna", "Shrimp"]
p sushi.first(1) # => ["Salmon"]
p sushi.first(0) # => []

puts

# Using last method - returns the last element(s) of an array
p sushi.last # => "Yellowtail"
p sushi.last(4) # => ["Tuna", "Shrimp", "Eel", "Yellowtail"]
p sushi.last(3) # => ["Shrimp", "Eel", "Yellowtail"]
p sushi.last(1) # => ["Yellowtail"]
p sushi.last(0) # => []



# ================================================================================== #



# The length, size, and count methods in Ruby
puts "\nThe length, size, and count methods in Ruby: "

puts "Double Whopper".length # => 14

puts

# Using length method
puts [1, 2, 3, 4].length # => 4
puts ["Hi", "there", nil].length # => 3
puts [].length # => 0

puts

# Using size method
puts [1, 2, 3, 4].size # => 4
puts ["Hi", "there", nil].size # => 3
puts [].size # => 0

puts

# Using count method
puts [1, 2, 3, 4].count # => 4
puts ["Hi", "there", nil].count # => 3
puts [].count # => 0



# ================================================================================== #



# The empty? and nil? predicate methods
puts "\nThe empty? and nil? predicate methods: "

# Using empty? method
puts ["A", "B"].empty? # => false
puts [].empty? # => true
puts [].empty? == 0 # => false

puts

# Using nil? method
puts [].nil? # => false
puts nil.nil? # => true



# ================================================================================== #



# The Equality and Inequality Operators in an Array
puts "\nThe Equality and Inequality Operators in an Array: "

candy = ["Skittles", "Starbursts", "Snickers"]
vegetables = ["Radishes", "Onions"]
desserts = ["Skittles", "Starbursts", "Snickers"]
sweets = ["Skittles", "Starbursts", "snickers"]

# Using an equality operator "=="
puts candy == desserts # => true
puts candy == vegetables # => false
puts candy == sweets # => false

puts

# Using an inequality operator "!="
puts candy != desserts # => false
puts candy != vegetables # => true
puts candy != sweets # => true



# ================================================================================== #



# The Spaceship Operator "<=>" - returns -1, 0, 1 or nil.
puts"\nThe Spaceship Operator \"<=>\": "

# Returns 0 if two vallues are equal
p 5 <=> 5 # => 0
p [3, 4, 5] <=> [3, 4, 5] # => 0

puts

# Returns -1 if the value on the left is lesser than the right
p 5 <=> 10 # => -1
p [1, 2, 4] <=> [3, 4, 5] # => -1

puts

# Returns 1 if the value on the left is greater than the right
p 5 <=> 3 # => 1
p [1, 10, 5] <=> [1, 5, 8] # => 1

puts

# Returns nil if the values are incomparable or not valid to compare with
p 5 <=> [1, 2, 3] # => nil
p [nil, 1, 2] <=> [0, 1, 2] # => nil



# ================================================================================== #



# The push method and shovel operator in Ruby
puts "\nThe push method and shovel operator in Ruby: "

# The push method - mutates the object from its original state.
soups = ["French Onion", "Clam Chowder", "Chicken Noodle"]

soups.push("Miso")
p soups # => ["French Onion", "Clam Chowder", "Chicken Noodle", "Miso"]

soups.push("Wonton", "Hot and Sour")
p soups # => ["French Onion", "Clam Chowder", "Chicken Noodle", "Miso", "Wonton", "Hot and Sour"]

puts

# The Shovel Operator
locations = ["Airport", "Bar", "Saloon"]
locations << "House"
p locations # => ["Airport", "Bar", "Saloon", "House"]

locations << "Rodeo" << "Theme Park"
p locations # => ["Airport", "Bar", "Saloon", "House", "Rodeo", "Theme Park"]



# ================================================================================== #



# The insert method in Ruby
puts "\nThe insert method in Ruby: "

credit_card_transactions = [19.99, 29.43, 3.87]

# insert(index-position, val to insert)
credit_card_transactions.insert(1, 49.99)
p credit_card_transactions # => [19.99, 49.99, 29.43, 3.87]

credit_card_transactions.insert(0, 1.23, 4.46, 7.89)
p credit_card_transactions # => [1.23, 4.46, 7.89, 19.99, 49.99, 29.43, 3.87]

p [1, 2, 3].insert(8, 1000) # => [1, 2, 3, nil, nil, nil, nil, nil, 1000]



# ================================================================================== #



# The pop method on arrays in Ruby
puts "\nThe pop method on arrays in Ruby: "

bubble_tea_flavors = [
  "Chocolate",
  "Kiwi",
  "Peach",
  "Plum",
  "Strawberry",
  "Taro"
]

# Without an argument
p bubble_tea_flavors.pop # => "Taro"
p bubble_tea_flavors # => ["Chocolate", "Kiwi", "Peach", "Plum", "Strawberry"]

puts

# With an argument
p bubble_tea_flavors.pop(1) # => ["Strawberry"]
p bubble_tea_flavors # => ["Chocolate", "Kiwi", "Peach", "Plum"]

p bubble_tea_flavors.pop(2) # => ["Peach", "Plum"]
p bubble_tea_flavors # => ["Chocolate", "Kiwi"]



# ================================================================================== #



# The shift and unshift methods on arrays in Ruby
puts "\nThe shift and unshift methods on arrays in Ruby: "

units = ["meter", "kilogram", "second", "ampere"]

p units.shift # => "meter"
p units # => ["kilogram", "second", "ampere"]

p units.shift(2) # => ["kilogram", "second"]
p units # => ["ampere"]

puts

p units.unshift("yard") # => ["yard", "ampere"]
p units # => ["yard", "ampere"]

p units.unshift("inches", "miles") # => ["inches", "miles", "yard", "ampere"]
p units # => ["inches", "miles", "yard", "ampere"]
