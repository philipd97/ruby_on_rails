# Section 2 - Using of Number
p 10 / 4 # 2
p 10.0 / 4 # 2.5
p 10 / 4.0 # 2.5
p 10 / 4.to_f # 2.5


# Using number for String Concatenation
puts "-" * 20 # --------------------


# Using `.times { <command> }`
20.times { print "-" } 
puts


# Using of Random class with `rand`
puts rand  # Returns 0 to less than 1 in float
puts rand(10) # Returns 0 to less than 10 in number


# Assignment - A simple Calculator
# 1) Take two input from User and show:
# 2) Multiplication
# 3) Division
# 4) Subtraction
# 5) Addition
# 6) Modulus
puts
puts "Simple Calculator"
20.times { print "-"}
puts 

#1
puts "Please enter the first number" 
num_1 = gets.chomp
puts "Please enter the second number"
num_2 = gets.chomp

#2
puts "The first number multiplied by the second number is #{num_1.to_f * num_2.to_f}"

#3
puts "The first number divided by the second number is #{num_1.to_f / num_2.to_f}"

#4 
puts "The fist number subtracted from the second number is #{num_2.to_f - num_1.to_f}"

#5
puts "The first number added to the second number is #{num_2.to_f + num_1.to_f}"

#6
puts "The first number modulus the second number is #{num_1.to_f % num_2.to_f}"
