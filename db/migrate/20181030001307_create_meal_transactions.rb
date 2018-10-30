class CreateMealTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :meal_transactions do |t|
      t.references :meal, foreign_key: true
      t.references :transaction, foreign_key: true

      t.timestamps
    end
  end
end
