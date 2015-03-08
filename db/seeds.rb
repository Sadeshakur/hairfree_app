# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all

User.create([
  { f_name: "Angelina", l_name: "Bethoney", sex: "female", born_on: "April 13 1989",    phone: "774-291-0958", email: "ambethoney@yahoo.com", password: "password"},
  { f_name: "Sade",     l_name: "Stevens",  sex: "female", born_on: "November 10 1991", phone: "516-043-7720", email: "sadeshakur@gmail.com", password: "password"},
  { f_name: "Dennis",   l_name: "Liaw",     sex: "male",   born_on: "May 16 1987",      phone: "678-455-9920", email: "dennisliaw@gmail.com", password: "password"},
  { f_name: "Dana",     l_name: "DeFilipo", sex: "female", born_on: "April 14 1991",    phone: "516-987-8427", email: "dana.dflip@gmail.com", password: "password"}
])
User.create([
  { f_name: "Angelina", l_name: "Bethoney", location: "New York", hair: "natural", born_on: "April 13 1989",    email: "ambethoney@yahoo.com", password: "password"},
  { f_name: "Sade",     l_name: "Stevens",  location: "New York", hair: "natural", born_on: "November 10 1991", email: "sadeshakur@gmail.com", password: "password"},
  { f_name: "Dennis",   l_name: "Liaw",     location: "New York", hair: "natural", born_on: "May 16 1987",      email: "dennisliaw@gmail.com", password: "password"},
  { f_name: "Dana",     l_name: "DeFilipo", location: "New York", hair: "natural", born_on: "April 14 1991",    email: "dana.dflip@gmail.com", password: "password"}
])
