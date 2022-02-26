class Student
  attr_accessor :first_name, :last_name, :email, :username, :password

  def intiailize(firstname, lastname, username, email, password)
    @first_name = firstname
    @last_name = lastname
    @username = username
    @email = email
    @password = password
  end


  def to_s
    "First name: #{@first_name}, Last name: #{@last_name}, Username: #{username}, email address: #{@email}, password: #{@password}"
  end
end


mashrur = Student.new("Mashrur", "Hossain", "Mashrur1", "Mashrur@example.com", "password1")
john = Student.new("John", "Doe", "John1", "John@example.com", "password2")

puts mashrur
puts john
