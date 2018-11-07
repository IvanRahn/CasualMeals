class Transaction < ApplicationRecord
  belongs_to :user
  has_many :meal_transactions
  has_many :meals, through: :meal_transactions
  #validations
  validates :delivery_address, format: {with: /\A\w[\w\d\s,.!?:]{10,}\z/,
                                        message: "The delivery needs to be 10 or more characters"}
  validates :description, format: {with: /\A\w[\w\d\s,.!?:]?\z/,
                                   message: "The delivery needs to be 10 or more characters"}

  def time
    self.created_at.strftime("%A, %d %B %Y")
  end

  def total_sales
    @total = MealTransaction.sum("sale_price")
  end
end
