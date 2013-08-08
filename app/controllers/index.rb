require 'bcrypt'

get '/' do
  # Look in app/views/index.erb

  erb :index
end

get '/logout' do

  session[:user_id] = nil
  redirect '/'
end

post '/login' do
  
  login
  redirect "/"
end

post '/sign_up' do

  @user = User.create(params[:user])
  login
  redirect "/"
end
