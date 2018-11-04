# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# customer seed
customer = User.new(
  email: "customer@gmail.com",
  password: "password",
  type_of_user: 0,
  first_name: "customer",
)
customer.save

# chef seed
chef = User.new(
  email: "chef@gmail.com",
  password: "password",
  type_of_user: "chef",
  first_name: "chef",
)
chef.save

30.times do |i|
  customer = User.new(
    email: "chef#{i}@test.com",
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    password: "123123",
    phone_number: 041234567,
    type_of_user: 1,
    stripe_id: Stripe::Customer.create(),
  )
  customer.save
end

User.where(type_of_user: 1 ).each do |i|
  chef = Chef.new(
    delivery_range: "5km",
    verification: true,
    user_id: i.id,
    currently_working: true,
  )
  chef.save
end

Chef.all.each do |i|
  10.times do
    meal = Meal.new(
      name: Faker::Food.dish,
      description: Faker::Food.description,
      cuisine: Faker::Nation.nationality,
      price: Faker::Number.number(2),
      delivery_time: Faker::Number.number(2),
      chef_id: i.id,
    )
    meal.save
  end
end
