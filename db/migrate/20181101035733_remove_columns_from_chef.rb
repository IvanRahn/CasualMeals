class RemoveColumnsFromChef < ActiveRecord::Migration[5.2]
  def change
    remove_column :chefs, :working_hours, :time
    remove_column :chefs, :working_days, :string
  end
end
