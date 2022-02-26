#bcrypt-ruby gem www.rubydoc.info
#use to implement hashing
#also use SALTS - makes result slightly different each time
require 'bundler/inline'

gemfile true do
  source 'http://rubygems.org'
  gem 'bcrypt'
end

require 'bcrypt'

my_password = BCrypt::Password.create("my password")
my_password_1 = BCrypt::Password.create("my password")
my_password_2 = BCrypt::Password.create("my password")

puts my_password
puts my_password_1
puts my_password_2

puts my_password == "my password"
#my_password = BCrypt::Password.new("$2a$12$D2zPhZifoFwzmeLm9K9L8ufap5kCeYDVOjlRjPjJQu1Hely6Z6A1y")
#puts my_password == "my password"     #=> true
#my_password == "not my password" #=> false