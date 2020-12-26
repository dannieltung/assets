class AddPriceToAssets < ActiveRecord::Migration[6.0]
  def change
    add_column :assets, :price, :float
  end
end
