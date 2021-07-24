# Homework Project: Authenticator
# - program will take input from the user & compare password
# - show error message if Credentials is incorrect
# - after an attempt, allow user to input command if wanted to quit the program
# - show full Hash info when correct Crendentials
# - only 3 number of attempt available

users = [
    { username: "user1", password: "password1" },
    { username: "user2", password: "password2" },
    { username: "user3", password: "password3" },
    { username: "user4", password: "password4" },
    { username: "user5", password: "password5" },
]

def checkUserInput(username, password, arrayHash)
  for hash in arrayHash
    if (hash[:username] == username && hash[:password] == password)
      return hash
    end
  end
  return 'Credentials were not correct'
end

puts "Welcome to the authenticator"
25.times { print "-" }
puts 
puts "This program will take input from the user and compare password"
puts "If password is correct, you will get back the user object"

attempt = 0

# Only allow 3 attempt
while attempt < 3
  print "Username: "
  username = gets.chomp

  print "Password: "
  password = gets.chomp

  # Check if input username & password is correct
  result = checkUserInput(username, password, users)
  puts result

  # Exit the program when user enter "n"
  puts "Enter n to quit or any key to continue"
  choice = gets.chomp.downcase

  if (choice == "n")
    break
  end

  attempt += 1
end

if (attempt == 3)
  puts "You have exceeded the number of attempts."
end

