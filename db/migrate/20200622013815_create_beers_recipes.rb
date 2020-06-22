class CreateBeersRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :beers_recipes, :id => false do |t|
      t.integer :beer_id
      t.integer :recipe_id
    end
  end
end
