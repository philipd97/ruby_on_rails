# Section 2 - Working with Strings (Part 1)
# Topics: 
# - String Concatenation
# - String Interpolation
# - Using Method
# - Variable Assigning
# - Escaping


# String Concatenation
#   - string can be declared in Single/Double Quotation
first_name = 'Philip'
last_name = "Ding"
full_name = first_name + " " + last_name
puts full_name # Philip Ding


# String Interpolation
#   - doesn't work in Single Quotation, only Double Quotation.
puts "My first name is #{first_name} and my last name is #{last_name}" # My first name is Philip and my last name is Ding
puts 'My first name is #{first_name} and my last name is #{last_name}' # My first name is #{first_name} and my last name is #{last_name}


# Using method
puts first_name.class # String
puts 10.class # Integer
# p first_name.methods # Show methods available for the class
puts 10.to_s.class # String (Method Chaining)
puts full_name.reverse # gniD pilihP
puts full_name.empty? # false
puts "".empty? # true
puts "".nil? # false
puts nil.nil? # true
puts sentence = "Welcome to the jungle" # Welcome to the jungle
puts sentence.sub("the jungle", "utopia") # Welcome to utopia


# Variable Assigning
new_first_name = first_name 
puts new_first_name # Philip
first_name = "John"
puts new_first_name # Philip
# - still output Philip because new_first_name is pointing towards the memory of the string "Philip" instead of pointing to the variable first_name


# Escaping
p 'the new first name is #{new_first_name}' # "the new first name is \#{new_first_name}"
p "the new first name is \#{new_first_name}" # "the new first name is \#{new_first_name}"
puts 'Philip asked \'Hey John, how are you doing\'' # "Philip asked 'Hey John, how are you doing'"
#  \ backspace here to escape special character like #, ''
