class Meal < ApplicationRecord
  belongs_to :chef
  has_many :meal_transactions
  mount_uploader :image, MealImageUploader
end
