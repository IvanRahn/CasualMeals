class CreateMeals < ActiveRecord::Migration[5.2]
  def change
    create_table :meals do |t|
      t.string :cuisine
      t.text :description
      t.integer :price
      t.integer :delivery_time
      t.text :image
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
