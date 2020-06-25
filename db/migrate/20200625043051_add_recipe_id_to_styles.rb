class AddRecipeIdToStyles < ActiveRecord::Migration[5.2]
  def change
    add_column :styles, :recipe_id, :integer
  end
end
