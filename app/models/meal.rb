class Meal < ApplicationRecord
  #associations
  belongs_to :chef
  has_many :meal_transactions
  has_many :orders, through: :meal_transactions
  # carrierwave
  mount_uploader :image, MealImageUploader
  #validations
  # validate cuisine
  validates :cuisine, inclusion: {in: %w(chinese french japanese vietnamese turkish american others),
                                  message: "%{value} is not a cuisine"}
  # validate description
  validates :description, length: {minimum: 25}
  # validate price
  validates :price, format: {with: /\A\d{1,8}\z/}
  # validates name, image
  validates :name, :image, presence: true

  # concat chef's first and last name

  def chef_name
    user = self.chef.user
    "#{user.first_name} #{user.last_name}"
  end

  class << self
    def search_meal(query)
      self.includes(:chef, chef: :user).references(:users)
          .where(chef_id: Chef.where(currently_working: true))
          .fuzzy_search({name: query, cuisine: query, users: {first_name: query, last_name: query}}, false)
    end

    def with_working_chef
      self.includes(:chef, chef: :user).where(chef_id: Chef.where(currently_working: true))
    end
  end
end
