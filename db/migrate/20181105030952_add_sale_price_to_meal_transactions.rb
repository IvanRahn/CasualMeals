class AddSalePriceToMealTransactions < ActiveRecord::Migration[5.2]
  def change
    add_column :meal_transactions, :sale_price, :integer
  end
end
