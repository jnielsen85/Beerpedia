class AddBrewerIdToRecipes < ActiveRecord::Migration[5.2]
  def change
    add_column :recipes, :brewer_id, :integer
  end
end
