class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # validations
  # first name, last name letters only
  validates :first_name, :last_name, presence: true, format: {with: /\A[a-zA-Z]+\z/,
                                                              message: "only allows letters"}
  # phone number: 10-14 digits, starting with a +?
  validates :phone_number, format: {with: /\A+?\d{10,14}\z/,
                                    message: "needs to be 10 or more digits"}
  # adress
  validates :address, presence: true
  #set enums for type_of_user
  enum type_of_user: {'customer': 0, 'chef': 1}
  # associations
  has_one :chef
  has_many :orders
  # create stripe id on registration
  after_create_commit :add_stripe_id

  # create stripe id
  def add_stripe_id
    if self.stripe_id.nil?
      customer = Stripe::Customer.create(
        :email => self.email,
      )
      self.stripe_id = customer.id
      self.save
    end
  end
end
