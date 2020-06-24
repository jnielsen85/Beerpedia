class AddBeerIdToRecipes < ActiveRecord::Migration[5.2]
  def change
    add_column :recipes, :beer_id, :integer
  end
end
