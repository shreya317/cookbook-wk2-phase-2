cookbook1 = Cookbook.create!(name: "Food!")
cookbook2 = Cookbook.create!(name: "Desserts")

cookbook2.recipes.create!(name:"Cookies", ingredients: "sugar, flour, chocolate", instructions: "combine and bake")
cookbook2.recipes.create!(name:"Cake", ingredients:"sugar, flour, vanilla", instructions: "combine and bake")
cookbook1.recipes.create!(name:"pancake", ingredients:"eggs, flour, milk", instructions: "stir and cook ")
cookbook1.recipes.create!(name:"scrambled eggs", ingredients:"eggs, butter", instructions: "scramble and cook")

john = User.create!(name:"John", email:"john@email.com", password:"password")
john.cookbooks << cookbook1

shreya = User.create!(name:"Shreya", email:"shreya@email.com", password:"qaz")
shreya.cookbooks << cookbook2

