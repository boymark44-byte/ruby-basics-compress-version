# Define a custom_delete method that accepts a text string and
# a string of deletion characters. The method should build up
# a new string consisting of only characters that are NOT found
# among the deletion characters. Do not use the built-in
# delete method in your solution.
#
# Examples:
# The => indicates the expected return value
# custom_delete("cottage cheese", "c")     => "ottage heese"
# custom_delete("cottage cheese", "e")     => "cottag chs"
# custom_delete("cottage cheese", "ce")    => "ottag hs"
# custom_delete("cottage cheese", "ec")    => "ottag hs"

# My own solution:
def custom_delete(text, deletion_characters)
  result = ""

  text.each_char do |character|
    # Using unless keyword
    result += character unless deletion_characters.include?(character)

    # Using if-statement
    #result << character if !deletion_characters.include?(character)
  end

  result
end

p custom_delete("cottage cheese", "c") # => "ottage heese"
p custom_delete("cottage cheese", "e") # => "cottag chs"
p custom_delete("cottage cheese", "ce") # => "ottag hs"
p custom_delete("cottage cheese", "ec") # => "ottag hs"


puts


# Instructor solution:
def custom_delete(text, characters_to_delete)
  result = ""

  text.each_char do |character|
    unless characters_to_delete.include?(character)
      result << character
    end
  end

  result
end

p custom_delete("cottage cheese", "c") # => "ottage heese"
p custom_delete("cottage cheese", "e") # => "cottag chs"
p custom_delete("cottage cheese", "ce") # => "ottag hs"
p custom_delete("cottage cheese", "ec") # => "ottag hs"
