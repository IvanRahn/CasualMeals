# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# customer seed
# customer = User.new(
#   email: "customer@gmail.com",
#   password: "password",
#   type_of_user: 0,
#   first_name: "customer",
# )
# customer.save

# # chef seed
# chef = User.new(
#   email: "chef@gmail.com",
#   password: "password",
#   type_of_user: "chef",
#   first_name: "chef",
# )
# chef.save

for i in 1..10
  customer = User.new(
    email: "chef#{i}@test.com",
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    password: "123123",
    phone_number: 041234567,
    type_of_user: 1,
    address: "Waterloo, NSW 2017",
  )
  customer.save

  chef = Chef.new(
    delivery_range: "5km",
    verification: true,
    user_id: i,
    currently_working: true,
  )
  chef.save
  10.times do
    meal = Meal.new(
      name: Faker::Food.dish,
      description: Faker::Food.description,
      cuisine: ["chinese", "french", "japanese", "vietnamese", "turkish", "american", "others"].sample, #Faker::Nation.nationality,
      price: Faker::Number.number(2),
      delivery_time: 0,
      chef_id: i,
      remote_image_url: "http://www.bpimaging.com/assets/uploads/2016/12/toronto-food-pita.jpg",
    )
    meal.save
    end
end
