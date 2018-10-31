class Transaction < ApplicationRecord
  belongs_to :user
  has_many :meal_transactions
  has_many :meals, through: :meal_transactions
end
