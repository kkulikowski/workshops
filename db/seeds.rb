# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Create Users
User.create(email: 'net@guru.co', password: 'password', firstname: 'Net', lastname: 'Guru', admin: true)
User.create(email: 'full@empty.com', password: 'password', firstname: 'full', lastname: 'empty')
User.create(email: 'celmar@gmail.com', password: 'password', firstname: 'Marcelina', lastname: 'Celestyna')
User.create(email: 'someoneelse@gmail.com', password: 'password', firstname: 'Seomeone', lastname: 'Else')
User.create(email: 'noone@gmail.com', password: 'password', firstname: 'No', lastname: 'One')
User.create(email: 'neverwhere@gmail.com', password: 'password', firstname: 'never', lastname: 'where')

# Create Categories
Category.create(name: 'Books')
Category.create(name: 'Music')
Category.create(name: 'Movies')

#Create Products
Product.create(title: 'Master and Margarita', description: 'Best. Book. Ever.', price: '2.99', category_id: 1, user_id: 3)
Product.create(title: 'Tool - Lateralus', description: 'Deep, strange, disturbing.', price: '9.01', category_id: 2, user_id: 1)
Product.create(title: 'Se7en', description: 'You will loose anyway movie.', price: '2.00', category_id: 3, user_id: 2)

#Create Reviews
Review.create(content: 'I double dare you to rate it less than 5.', rating: 4, product_id: 1, user_id: 5)
Review.create(content: 'Cool, worth the price.', rating: 5, product_id: 1, user_id: 1)
Review.create(content: 'I like it!', rating: 4, product_id: 2, user_id: 3)
Review.create(content: 'Cant wait for the next one!', rating: 4, product_id: 2, user_id: 2)
Review.create(content: 'I just dont know what to say about it..', rating: 5, product_id: 3, user_id: 4)
Review.create(content: 'I didnt like it.', rating: 1, product_id: 3, user_id: 1)