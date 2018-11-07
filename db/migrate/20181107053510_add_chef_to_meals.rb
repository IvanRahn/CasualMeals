class AddChefToMeals < ActiveRecord::Migration[5.2]
  def change
    add_reference :meals, :chef, foreign_key: true
  end
end
