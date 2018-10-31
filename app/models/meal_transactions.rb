class MealTransactions < ApplicationRecord
  belongs_to :meal
  belongs_to :transaction
end
