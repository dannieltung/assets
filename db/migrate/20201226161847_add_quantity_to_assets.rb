class AddQuantityToAssets < ActiveRecord::Migration[6.0]
  def change
    add_column :assets, :quantity, :integer
  end
end
