# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
    User.create(email: 'customer@gmail.com', encrypted_password: 'password', first_name: 'customer', last_name: 'first', phone_number: '9999 9999', address: 'Sydney', type_of_user: 0)
    Chef.create(email: 'chef@gmail.com', encrypted_password: 'password', first_name: 'chef', last_name: 'first', phone_number: '9999 9999', address: 'Sydney', type_of_user: 1)
    
