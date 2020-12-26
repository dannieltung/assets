class AddUserReferenceToAssets < ActiveRecord::Migration[6.0]
  def change
    add_reference :assets, :user, index: true
    add_foreign_key :assets, :users
  end
end
