class RenameTypeToOperation < ActiveRecord::Migration[6.0]
  def change
    rename_column :assets, :type, :operation
  end
end
