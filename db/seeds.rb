# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Driver.delete_all
Driver.new(name: 'Yuta Totsuka', phone: '09088073426', place: 'Kampala', review: 4, comment: 'This is a comment').save
Driver.new(name: 'Kenta Sato', phone: '09088073429', place: 'Rwenzori', review: 5, comment: 'This is a comment').save
Driver.new(name: 'Milton Obote', phone: '09088073425', place: 'Kampala', review: 1, comment: 'This is a comment').save
Driver.new(name: 'Idi Amin', phone: '09088073424', place: 'Jinja', review: 3, comment: 'This is a comment').save
drivers = Driver.all

User.delete_all
user = User.create! :email => 'yuta@gmail.com', :password => 'password', :password_confirmation => 'password'
users = User.all

Favorite.delete_all
Favorite.new(user_id: users[0].id, driver_id: drivers[0].id).save
Favorite.new(user_id: users[0].id, driver_id: drivers[1].id).save
