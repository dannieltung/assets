class AddTradeToAssets < ActiveRecord::Migration[6.0]
  def change
    add_column :assets, :trade, :datetime
  end
end
