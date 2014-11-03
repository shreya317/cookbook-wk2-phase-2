get '/cookbooks' do
  @all_cookbooks = Cookbook.all
  @cookbooks = Cookbook.where(user_id: session[:user_id])
  erb :"cookbook/show"
end

# get '/cookbooks/:cookbook_id' do
#     # @cookbooks = Cookbook.where(user_id: session[:user_id])
#     redirect "/recipe/#{cookbook.id}"
# end

post '/cookbook/new' do
  @cookbook = Cookbook.create!(name: params[:name], user_id: session[:user_id])
  redirect "/cookbooks"
end
