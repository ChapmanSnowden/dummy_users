require 'bcrypt'

get '/' do
  # Look in app/views/index.erb
  erb :index
end

post '/login' do

  erb :user_landing
end

get '/new_user' do
  erb :new_user
end

post '/new_user' do
  User.create(params)
  redirect to '/index'
end

post '/logout' do

  erb :index
end
