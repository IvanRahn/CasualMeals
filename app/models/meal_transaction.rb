class MealTransaction < ApplicationRecord
  belongs_to :meal
  belongs_to :order, foreign_key: "transaction_id", class_name: "Transaction"

# def sum_by_transaction(transaction_id)
# meals = self.where(transaction_id: transaction_id)
# meals.inject {}

# end

  def time
    # self.created_at.to_date
    self.created_at.strftime("%A, %d %B %Y")
  end
end
