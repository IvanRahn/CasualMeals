class Transaction < ApplicationRecord
  belongs_to :user
  has_many :meal_transactions
  has_many :meals, through: :meal_transactions
  #validations
  validates :delivery_address, presence: true
  def time
    self.created_at.strftime("%A, %d %B %Y")
  end

  def total_sales
    @total = MealTransaction.sum("sale_price")
  end
end
