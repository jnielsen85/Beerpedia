
Beer.destroy_all
b1 = Beer.create :name => 'Jims Lager'
b2 = Beer.create :name => 'Jims Pilsner'
b3 = Beer.create :name => 'Jims Pale Ale'
puts "#{ Beer.count } beers"

Style.destroy_all
t1 = Style.create :name => 'Standard Australian Lager'
t2 = Style.create :name => 'Pilsner'
t3 = Style.create :name => 'Pale Ale'
puts "#{ Style.count } styles"

Recipe.destroy_all
r1 = Recipe.create :name => 'Jims Lager Recipe'
puts "#{ Recipe.count } recipes"

# Associations #################################################################

puts "Styles and beers"
t1.beers << b1
t2.beers << b2
t3.beers << b2

puts "Recipes and Beers"
b1.recipes << r1
