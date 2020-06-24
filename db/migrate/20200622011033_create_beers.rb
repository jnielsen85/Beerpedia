class CreateBeers < ActiveRecord::Migration[5.2]
  def change
    create_table :beers do |t|
      t.text :name
      t.text :brewername
      t.text :description
      t.float :acv
      t.text :image

      t.timestamps
    end
  end
end
