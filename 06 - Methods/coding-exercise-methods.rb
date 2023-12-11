def easy_money
  puts 100
end

def best_food_ever
  puts "Sushi"
end

def convert_to_currency(integer)
  puts "$#{integer}"
end

p easy_money # => [100, nil]
p best_food_ever # => ["Sushi", nil]
p convert_to_currency(15) # => [$15, nil]
p convert_to_currency(15).class # => [$15, NilClass]
p convert_to_currency(8) # => [$8, nil]
p convert_to_currency(8).class # => [$8, NilClass]
