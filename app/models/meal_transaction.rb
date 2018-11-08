class MealTransaction < ApplicationRecord
  belongs_to :meal
  belongs_to :order, foreign_key: "transaction_id", class_name: "Transaction"

  # set time
  def time
    self.created_at.strftime("%A, %d %B %Y")
  end

  #
  def formatstripe
    self.sale_price.to_i / 100
  end
end
