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

  def self.authenticate(email, password)
    # if email and password correspond to a valid user, return that user
    # otherwise, return nil

    @user = User.find_by_email(params[:email])
    if @user.password == params[:password]
      @user
    else
      nil
    end

  end
end
