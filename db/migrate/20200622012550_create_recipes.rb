class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.text :name
      t.text :description
      t.float :acv
      t.text :color
      t.text :difficulty
      t.text :ingredients
      t.text :directions
      t.text :equipment
      t.text :image
      t.integer :user_id

      t.timestamps
    end
  end
end
