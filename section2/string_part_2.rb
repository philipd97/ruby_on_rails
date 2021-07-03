# Section 2 - Working with String (Part 2)
# Taking User Input

# Assignment:
# 1) Ask for user input for first_name & last_name
# 2) Display the full name
# 3) Display the full name in reverse
# 4) Display the character count of the full name

# 1
puts "Enter your first name"
first_name = gets.chomp

puts "Enter your last name"
last_name = gets.chomp

# 2
full_name = first_name + " " + last_name
puts "Your full name is #{full_name}"

# 3
puts "Your full name reversed is #{full_name.reverse}"

# 4
puts "Your name has #{full_name.delete(" ").length} characters in it"
