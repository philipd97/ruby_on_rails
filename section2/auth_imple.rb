# Section 2 - Authenticator Project Implementation

users = [
  { username: "mashrur", password: "password1" },
  { username: "jack", password: "password2" },
  { username: "arya", password: "password3" },
  { username: "jonshow", password: "password4" },
  { username: "heisenberg", password: "password5" },
]

def auth_user(username, password, list_of_users)
  # list_of_users.each do |user_record|
  #   if user_record[:username] == username && user_record[:password] == password
  #     return user_record
  #   end
  # end
  # "Credentials were not correct"
  list_of_users.find { |user| 
    user[:username] == username && user[:password] == password
  } || "Credentials were not correct"
end

puts "Welcome to the authenticator"
25.times { print "-" }
puts 
puts "This program will take input form the user and compare password"
puts "If password is correct, you will get back the user object"

attempts = 1
while attempts < 4
  print "Username: "
  username = gets.chomp
  print "Password: "
  password = gets.chomp

  authentication = auth_user(username, password, users)
  puts authentication

  puts "Press n to quit or any other key to continue: "
  input = gets.chomp.downcase

  # Write in One Line if only 1 condition
  break if input == "n"

  attempts += 1
end

puts "You have exceeded the number of attempts" if attempts == 4

