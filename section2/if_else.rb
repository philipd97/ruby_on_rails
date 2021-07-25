# Section 2 - If Else
# Let user pick choice of calculation

def multiply(num_1, num2)
  num_1 * num2
end

def divide(num1, num2)
  num1 / num2
end

def subtract(num2, num1)
  num2 - num1
end

def add(num2, num1)
  num2 + num1
end

def modulus(num1, num2)
  num1 % num2
end

puts "Simple Calculator"
  20.times { print "-"}
puts 

# Declare Variable
$num_1 
$num_2
$userChoice

#1
loop do
  puts "Please enter the first number" 
  $num_1 = gets.chomp

  puts "Please enter the second number"
  $num_2 = gets.chomp

  puts "What do you want to do?"
  puts "Enter:"
  puts "1 to multiply"
  puts "2 to divide"
  puts "3 to subtract"
  puts "4 to add"
  puts "5 to modulus"
  $userChoice = gets.chomp

  # To check if the input is Number
  $num_1 = Float($num_1)
  $num_2 = Float($num_2)

  # Check userChoice consist of only Integer number
  $userChoice = Integer($userChoice)

  # Check if userChoice is between 0 to 5
  # If not, redo the Loop
  if (!($userChoice >= 0 && $userChoice <= 5))
    puts "\nPlease enter command input of only 0 to 5"
    next
  end

  # Check on userChoice is 2 or 4 which is divide & modulus
  # If not, then proceed with calculation 
  # Second number can be 0
  if ($userChoice != 2 && $userChoice != 5)
    break
  end

  # Check division or modulus able to perform by checking second number
  # If second number is not 0, exit the Loop & proceed with calculation
  if ($num_2 != 0)
    break
  end

  puts "\nInvalid for second number, as #{$num_2} could not perform division or modulus operation."
  puts "Please try again.\n\n"

rescue ArgumentError => e
  puts "\nInput must be Number"
  puts "Please try again.\n\n"
end

# If Else
# Section 2 Assignment:
if $userChoice == 1
  puts "You have chosen to multiply."
  puts "The first number multiplied by the second number is #{multiply($num_1, $num_2)}"
elsif $userChoice == 2
  puts "You have chosen to divide."
  puts "The first number divided by the second number is #{divide($num_1, $num_2)}"
elsif $userChoice == 3
  puts "You have chosen to subtract."
  puts "The fist number subtracted from the second number is #{subtract($num_2, $num_1)}"
elsif $userChoice == 4
  puts "You have chosen to add."
  puts "The first number added to the second number is #{add($num_2, $num_1)}"
elsif $userChoice == 5
  puts "You have chosen to modulus."
  puts "The first number modulus the second number is #{modulus($num_1, $num_2)}"
end

