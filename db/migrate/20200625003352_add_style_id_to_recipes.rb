class AddStyleIdToRecipes < ActiveRecord::Migration[5.2]
  def change
    add_column :recipes, :style_id, :integer
  end
end
