require 'bcrypt'

users = [
  { username: "user1", password: "password1" },
  { username: "user2", password: "password2" },
  { username: "user3", password: "password3" },
  { username: "user4", password: "password4" },
  { username: "user5", password: "password5" },
]

def create_hash_digest(password)
  BCrypt::Password.create(password)
end

def verify_hash_digest(password)
  BCrypt::Password.new(password) 
end

def create_secure_users(list_of_users)
  list_of_users.each do |user_record|
    user_record[:password] = create_hash_digest(user_record[:password])
  end
  list_of_users
end

def authenticate_user(username, password, list_of_users)
  list_of_users.find { |user_record|
    user_record[:username] == username && user_record[:password] == password 
  } || "Credentials were not correct"
end

encrypted_list = create_secure_users(users)

puts authenticate_user("user1", "password1", encrypted_list)

