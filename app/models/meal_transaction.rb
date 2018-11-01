class MealTransaction < ApplicationRecord
  belongs_to :meal
  belongs_to :order, foreign_key: "transaction_id", class_name: "Transaction"


end
