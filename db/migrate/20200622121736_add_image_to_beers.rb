class AddImageToBeers < ActiveRecord::Migration[5.2]
  def change
    add_column :beers, :image, :text
  end
end
