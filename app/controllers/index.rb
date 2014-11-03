get '/' do
  # Look in app/views/index.erb
  erb :index
end

post '/login' do
  @user = User.find_by(email: params[:user][:email])
  if @user && @user.authenticate(params[:user][:password])
    session[:user_id] = @user.id
    redirect '/cookbooks'
  else
    @error = "Invalid email or password"
    erb :"index"
  end
end


get '/logout' do
  session.clear
  redirect '/'
end
