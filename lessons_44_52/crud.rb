require 'bundler/inline'

gemfile true do
  source 'http://rubygems.org'
  gem 'bcrypt'
end

require 'bcrypt'

users = [
    {username: "mashrur", password: "password1"},
    {username: "jack", password: "password2"},
    {username: "arya", password: "password3"},
    {username: "jonshow", password: "password4"},
    {username: "heisenberg", password: "password5"},
]

def create_hash_digest(password)
  BCrypt::Password.create(password)
end

def verify_hash_digest(pasword)
  BCrypt::Password.create(password)
end

def create_secure_users(list_of_users)
    list_of_users.each do |user_record|
        user_record[:password] = create_hash_digest(user_record[:password])
    end
    puts list_of_users
end

create_secure_users(users)


#here we have created a toolkit that you can create to a module to work with in other classes
#you can mixin a module into a class and use it a tool in the class
#module are like tool kits
