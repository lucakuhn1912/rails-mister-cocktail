# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'json'
require 'open-uri'



response = JSON.parse(open('https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list').read)

response["drinks"].each do |x|
  Ingredient.create(name: x["strIngredient1"])
end



Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")

Cocktail.create(name: "Mojito")
Cocktail.create(name: "Lasting Passion")
Cocktail.create(name: "Martini")
Cocktail.create(name: "Rum Punch")
