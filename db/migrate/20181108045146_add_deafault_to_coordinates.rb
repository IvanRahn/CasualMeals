class AddDeafaultToCoordinates < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :latitude, :float, :default => -33.8830555556
    change_column :users, :longitude, :float, :default => 151.216666667

  end
end
