class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  enum type_of_user: {'customer':0, 'chef':1}
  has_one :chef
  has_many :orders
  after_create_commit :add_stripe_id

  def add_stripe_id
    if self.stripe_id.nil?
    customer = Stripe::Customer.create(
  :email => self.email
)
self.stripe_id = customer.id
self.save
  end
end
end
