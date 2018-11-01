class AddColumnToChef < ActiveRecord::Migration[5.2]
  def change
    add_column :chefs, :currently_working, :boolean, default: false
  end
end
