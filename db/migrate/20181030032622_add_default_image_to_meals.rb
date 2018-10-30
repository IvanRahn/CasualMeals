class AddDefaultImageToMeals < ActiveRecord::Migration[5.2]
  def change
    change_column :meals, :image, :text, :default => "http://mamadips.com/wp-content/uploads/2016/11/defimage.gif"
  end
end
