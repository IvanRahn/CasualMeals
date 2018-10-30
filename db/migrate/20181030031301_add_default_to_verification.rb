class AddDefaultToVerification < ActiveRecord::Migration[5.2]
  def change
    change_column :chefs, :verification, :boolean, :default => false

  end
end
