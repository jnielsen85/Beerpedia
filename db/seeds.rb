# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Beer.destroy_all
b1 = Beer.create :name => 'Corona'
b2 = Beer.create :name => 'Victorian Bitter'
b3 = Beer.create :name => "Tooheys New"
b4 = Beer.create :name => 'Furphy'
b5 = Beer.create :name => 'Stella Artois'
b6 = Beer.create :name => 'Jims Beer'
puts "#{ Beer.count } beers"

Brewery.destroy_all
br1 = Brewery.create :name => 'Anheuser-Busch InBev'
br2 = Brewery.create :name => 'Carlton & United Breweries'
br3 = Brewery.create :name => 'Lions Nathan'
br4 = Brewery.create :name => 'Little Creatures Brewing'
puts "#{ Brewery.count } breweries"

Type.destroy_all
t1 = Type.create :name => 'Pale Lager'
t2 = Type.create :name => 'Standard Australian Lager'
t3 = Type.create :name => 'Weizen'
t4 = Type.create :name => 'Refreshing Ale'
t5 = Type.create :name => 'Pilsner'
puts "#{ Type.count } types"

Recipe.destroy_all
r1 = Recipe.create :title => 'Homebrew 1'
puts "#{ Recipe.count } recipes"

# Associations #################################################################

puts "Breweries and beers"
br1.beers << b1
br2.beers << b2
br3.beers << b3
br4.beers << b4
br1.beers << b5

puts "Types and beers"
b1.types << t1
b2.types << t2
b3.types << t2
b4.types << t2 << t4
b5.types << t5
b6.types << t1 << t2

puts "Recipes and Beers"
r1.beers << b6
