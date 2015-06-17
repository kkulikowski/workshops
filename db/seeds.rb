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