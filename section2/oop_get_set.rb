require_relative 'crud'

class Student
  include Crud
  attr_accessor :first_name, :last_name, :email, :username, :password

  def initialize(firstname, lastname, email, username, password)
    @first_name = firstname
    @last_name = lastname
    @email = email
    @username = username
    @password = password
  end

  def to_s
    "First name: #{@first_name}, Last name: #{@last_name}, Username: #{@username}, Email: #{@email}"
  end
end

student1 = Student.new("Peter", "Parker", "peter@email.com", "student1", "password1")
student2 = Student.new("James", "Jameson", "james@email.com", "jameson100", "password2")

# puts student1
# puts student2
# student1.last_name = student2.last_name
# puts "Student 1's name is altered"
# puts student1
hashed_password = student1.create_hash_digest
puts hashed_password

users = [
  { username: "student1", password: "password1" },
  { username: "student2", password: "password2" },
  { username: "student3", password: "password3" },
  { username: "student4", password: "password4" },
  { username: "student5", password: "password5" },
]

encrypted_users = Crud.create_secure_users(users)
puts encrypted_users

