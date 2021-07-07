# Section 2 - Methods
# Flow of Execution of Ruby is Top to Bottom
# Therefore Methods have to be declared above before calling it

def multiply(num_1, num2)
  num_1.to_f * num2.to_f
end

def divide(num1, num2)
  if num2.to_f.eql?(0.0)
    return "invalid, as #{num1} could not divide by #{num2}" # The first number divided by the second number is invalid, as 1 could not divide by 0
  end

  return num1.to_f / num2.to_f
end

def subtract(num2, num1)
  num2.to_f - num1.to_f
end

def add(num2, num1)
  num2.to_f + num1.to_f
end

def modulus(num1, num2)
  if num2.to_f.eql?(0.0)
    return "invalid, as #{num1} could not be modulus by #{num2}" # The first number modulus the second number is invalid, as 1 could not perform modulus by 0
  end

  return num1.to_f % num2.to_f
end

puts "Simple Calculator"
20.times { print "-"}
puts 

#1
puts "Please enter the first number" 
num_1 = gets.chomp
puts "Please enter the second number"
num_2 = gets.chomp

#2
puts "The first number multiplied by the second number is #{multiply(num_1, num_2)}"

#3
puts "The first number divided by the second number is #{divide(num_1, num_2)}"

#4 
puts "The fist number subtracted from the second number is #{subtract(num_2, num_1)}"

#5
puts "The first number added to the second number is #{add(num_2, num_1)}"

#6
puts "The first number modulus the second number is #{modulus(num_1, num_2)}"

