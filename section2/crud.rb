module Crud
  require 'bcrypt'
  puts "Module CRUD activated"

  # def self.create_hash_digest(password)
  def create_hash_digest(password = nil)
    BCrypt::Password.create(respond_to?(:password) ? self.password : password)
  end

  # def self.verify_hash_digest(password)
  def verify_hash_digest
    BCrypt::Password.new(self.password)
  end

  def self.create_secure_users(list_of_users)
    list_of_users.each do |user_record|
      user_record[:password] = Class.include(Crud).create_hash_digest(user_record[:password])
    end
    list_of_users
  end

  # def self.authenticate_user(username, password, list_of_users)
  def authenticate_user(list_of_users = [])
    list_of_users.find { |user_record|
      user_record[:username] == self.username && user_record[:password] == self.password 
    } || "Credentials were not correct"
  end
end

