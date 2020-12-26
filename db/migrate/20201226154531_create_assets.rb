class CreateAssets < ActiveRecord::Migration[6.0]
  def change
    create_table :assets do |t|

      t.timestamps
    end
  end
end
