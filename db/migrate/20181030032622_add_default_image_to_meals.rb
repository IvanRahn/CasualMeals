class AddDefaultImageToMeals < ActiveRecord::Migration[5.2]
  def change
    change_column :meals, :image, :text, :default => "http://www.bpimaging.com/assets/uploads/2016/12/toronto-food-pita.jpg"
  end
end
