class FixColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :meals, :user_id, :chef_id
  end
end
