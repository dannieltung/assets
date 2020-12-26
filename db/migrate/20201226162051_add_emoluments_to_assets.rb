class AddEmolumentsToAssets < ActiveRecord::Migration[6.0]
  def change
    add_column :assets, :emoluments, :float
  end
end
