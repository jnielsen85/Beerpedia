class CreateBrewers < ActiveRecord::Migration[5.2]
  def change
    create_table :brewers do |t|
      t.text :name
      t.text :email
      t.text :bio
      t.text :specialty
      t.text :image

      t.timestamps
    end
  end
end
