def calculate_meal_cost(amount, tip = 0.20)
  amount + (amount * tip)
end

puts calculate_meal_cost(20, 0.05) # => 40.05
puts calculate_meal_cost(20) # => 40.2
puts calculate_meal_cost(100, 0.12) # => 200.12
puts calculate_meal_cost(100) # => 200.2


puts


def string_adder(a = "", b = "")
  "#{a} #{b}"
end

p string_adder("Hello", "World") # => "Hello World"
p string_adder("Emilio", "Esteves") # => "Emilio Esteves"
p string_adder # => "  "
p string_adder("Tiger") # => "Tiger "
