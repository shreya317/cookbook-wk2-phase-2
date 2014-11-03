get '/users/' do
  erb :"user/new"
end

post '/user/new' do
  @user = User.create!(params[:user])
  session[:user_id] = @user.id
  redirect '/cookbooks'
end
