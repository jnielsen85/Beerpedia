class CreateBeersTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :beers_types, :id => false do |t|
      t.integer :beer_id
      t.integer :type_id
    end
  end
end
