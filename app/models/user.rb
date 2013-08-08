require 'bcrypt'

class User < ActiveRecord::Base
  include BCrypt
  # e.g., User.authenticate('jesse@devbootcamp.com', 'apples123')
  



  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  
end
