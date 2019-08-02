# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require 'json'
# require 'open-uri'

# url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
# serialized_file = File.read(url)
# cocktails = JSON.parse(serialized_file)

# cocktails.drinks.each do |ingredient|
#   Ingredient.create(name: ingredient)
# end

Ingredient.create(name: "Light rum")
Ingredient.create(name: "Sweet Vermouth")
Ingredient.create(name: "Strawberry schnapps")
Ingredient.create(name: "Scotch")

url = "http://static.giantbomb.com/uploads/original/9/99864/2419866-nes_console_set.png"

Cocktail.create!(name: "Mint Julep", remote_photo_url: url)

