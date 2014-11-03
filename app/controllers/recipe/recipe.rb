get "/cookbooks/:cookbook_id/recipes" do
  @recipes = Recipe.where(cookbook_id: params[:cookbook_id] )
  @cookbook = Cookbook.find_by(id: params[:cookbook_id])
  erb :"recipe/index"
end

get '/cookbooks/:cookbook_id/recipes/:recipe_id' do
  @recipe = Recipe.find_by(id: params[:recipe_id])
  erb :"recipe/show"
end

post '/cookbook/:cookbook_id' do
  @recipe = Recipe.create!(name: params[:name], ingredients: params[:ingredients], instructions: params[:instructions], cookbook_id: params[:cookbook_id])
  redirect "/cookbooks/#{@recipe.cookbook_id}/recipes"
end

delete '/recipe/:recipe_id' do
  @recipe = Recipe.find_by(id: params[:recipe_id])
  @recipe.destroy
  redirect "/cookbooks/#{@recipe.cookbook_id}/recipes"
end
