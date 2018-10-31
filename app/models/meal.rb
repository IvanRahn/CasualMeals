class Meal < ApplicationRecord
  belongs_to :chef
  has_many :meal_transactions
  has_many :orders, through: :meal_transactions
  mount_uploader :image, MealImageUploader

  def chef_name
    user = self.chef.user 
    "#{user.first_name} #{user.last_name}"  
  end
end
