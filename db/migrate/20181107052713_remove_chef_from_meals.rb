class RemoveChefFromMeals < ActiveRecord::Migration[5.2]
  def change
    remove_reference :meals, :chef
  end
end
