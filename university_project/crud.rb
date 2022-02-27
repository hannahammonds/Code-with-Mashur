#using 'self.-' instead of the module in name in front of methods also works
#self class a class method (or module)
#instance methods have just the method and use the object of the class

require 'bundler/inline'

gemfile true do
  source 'http://rubygems.org'
  gem 'bcrypt'
end

module Crud
  require 'bcrypt'
  puts "Module CRUD activated"

  def create_hash_digest(password)
    BCrypt::Password.create(password)
  end

  def verify_hash_digest(password)
    BCrypt::Password.create(password)
end

  def create_secure_users(list_of_users)
      list_of_users.each do |user_record|
        user_record[:password] = create_hash_digest(user_record[:password])
      end
    puts list_of_users
  end

  def authenticate_user(username, password, list_of_users)
    list_of_users.each do |user_record|
      if user_record[:username] == username && verify_hash_digest(user_record[:password]) == password
        return user_record
      end
    end
  "Credintials were not correct!"
  end
end

#here we have created a toolkit that you can create to a module to work with in other classes
#you can mixin a module into a class and use it a tool in the class
#module are like tool kits
