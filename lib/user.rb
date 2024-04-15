

require 'pry'

class User
  attr_accessor :email
  attr_accessor :age

  @@email_count = 0
  @@number_of_users =  0
  @@all_users = []
  @@user_count= 0

=begin
  def users_input(email,age)
    @email = email
    @age = age
    @@all_users << @email
  end
=end

def initialize(email,age) #enregistre l'utilisateur lorsque la methode initialize est démarré
  @email = email
  @age = age
  puts @email
  
  @@all_users = @email
  @@user_count = @@user_count +1
  puts @@all_users

  puts "L'utilisateur a bien été enregistré"
end

def email
  return @email
end

def age
  return @age
end

def self.users
  return @@all_users
end

def self.count
  return @@user_count
end

def self.find_by_email(string)
  @@all_users.each do | user |
  @all_users == user
  puts "ok"
  end
end

end
binding.pry
puts "end of file"

