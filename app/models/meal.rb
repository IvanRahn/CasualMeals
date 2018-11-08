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
  # validates :description, format: {with: /\A\w[\w\d\s,.!?:]{10,}\z/,
                                  #  message: "The description needs to be 10 or more characters"}
  # validate price
  validates :price, format: {with: /\A\d{1,8}\z/}
  # validates name, image
  validates :name, format: {with: /\A[\w\d\s,.]*\z/,
                            message: "The name has invalid characters"}

  # concat chef's first and last name

  def chef_name
    user = self.chef.user
    "#{user.first_name} #{user.last_name}"
  end

  class << self
    # search query
    def search_meal(query)
      self.includes(:chef, chef: :user).references(:users)
          .where(chef_id: Chef.where(currently_working: true))
          .fuzzy_search({name: query, cuisine: query, users: {first_name: query, last_name: query}}, false)
    end

    # include chefs with status currently_working
    def with_working_chef
      self.includes(:chef, chef: :user).where(chef_id: Chef.where(currently_working: true))
    end
  end
end
