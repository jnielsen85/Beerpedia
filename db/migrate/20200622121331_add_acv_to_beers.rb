class AddAcvToBeers < ActiveRecord::Migration[5.2]
  def change
    add_column :beers, :acv, :float
  end
end
