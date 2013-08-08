get '/' do
  # Look in app/views/index.erb
  erb :index
end

post 'login' do

  erb :user_landing
end

get 'create_account' do
  erb :new_user
end


post 'create_account' do

  redirect to '/'
end

post 'logout' do

  erb :index
end
