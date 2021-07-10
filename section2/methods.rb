# Section 2 - Methods
# Flow of Execution of Ruby is Top to Bottom
# Therefore Methods have to be declared above before calling it

def multiply(num_1, num2)
  num_1.to_f * num2.to_f
end

def divide(num1, num2)
  num1.to_f / num2.to_f
end

def subtract(num2, num1)
  num2.to_f - num1.to_f
end

def add(num2, num1)
  num2.to_f + num1.to_f
end

def modulus(num1, num2)
  num1.to_f % num2.to_f
end

puts "Simple Calculator"
20.times { print "-"}
puts 

# Declare Variable
$num_1 
$num_2

#1
loop do
  puts "Please enter the first number" 
  $num_1 = gets.chomp

  puts "Please enter the second number"
  $num_2 = gets.chomp

  begin
    # To check if the input is Number
    Float($num_1)
    Float($num_2)

    # Check division or modulus able to perform by checking second number
    if ($num_2.to_f.eql?(0.0))
      puts "\nInvalid for second number, as #{$num_2} could not perform division or modulus operation."
      puts "Please try again.\n\n"
    else
      break
    end

  rescue ArgumentError => e
    puts "\nInput must be Number"
    puts "Please try again.\n\n"
  end
end

#2
puts "The first number multiplied by the second number is #{multiply($num_1, $num_2)}"

#3
puts "The first number divided by the second number is #{divide($num_1, $num_2)}"

#4 
puts "The fist number subtracted from the second number is #{subtract($num_2, $num_1)}"

#5
puts "The first number added to the second number is #{add($num_2, $num_1)}"

#6
puts "The first number modulus the second number is #{modulus($num_1, $num_2)}"

