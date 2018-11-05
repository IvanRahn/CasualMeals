class Transaction < ApplicationRecord
  belongs_to :user
  has_many :meal_transactions
  has_many :meals, through: :meal_transactions

  def time
    # self.created_at.to_date
    self.created_at.strftime("%A, %d %B %Y")
  end

  def total_sales
    @total = MealTransaction.sum("sale_price")
  end
end
