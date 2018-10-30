# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# customer seed
customer = User.new(
    email: 'customer@gmail.com',
    password: 'password',
    type_of_user: 0,
    first_name: 'customer'
)
customer.save

# chef seed
chef = User.new(
    email: 'chef@gmail.com',
    password: 'password',
    type_of_user: 1,
    first_name: 'chef'
)
chef.save



    
