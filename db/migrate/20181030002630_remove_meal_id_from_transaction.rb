class RemoveMealIdFromTransaction < ActiveRecord::Migration[5.2]
  def change
    remove_column :transactions, :meal_id, :integer
  end
end
