class Transaction < ApplicationRecord
  belongs_to :user
  has_many :meal_transactions
end
