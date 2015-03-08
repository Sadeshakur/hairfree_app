# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Account.destroy_all
Profile.destroy_all
Event.destroy_all

User.create([
  { email: "ambethoney@yahoo.com", password: "password"},
  { email: "sadeshakur@gmail.com", password: "password"},
  { email: "dennisliaw@gmail.com", password: "password"},
  { email: "dana.dflip@gmail.com", password: "password"}
])

Account.create([
  { f_name: "Angelina", l_name: "Bethoney", born_on: "April 13 1989",    phone: "774-291-0958", users_id: User.find_by(email: "ambethoney@yahoo.com").id},
  { f_name: "Sade",     l_name: "Stevens",  born_on: "November 10 1991", phone: "516-043-7720", users_id: User.find_by(email: "sadeshakur@gmail.com").id},
  { f_name: "Dennis",   l_name: "Liaw",     born_on: "May 16 1987",      phone: "678-455-9920", users_id: User.find_by(email: "dennisliaw@gmail.com").id},
  { f_name: "Dana",     l_name: "DeFilipo", born_on: "April 14 1991",    phone: "516-987-8427", users_id: User.find_by(email: "dana.dflip@gmail.com").id}
])

Profile.create([
  { image_url: "https://pbs.twimg.com/profile_images/532551444524593154/kp1YMZDU.jpeg",                         name: "Angelina", location: "Massachusetts", bio: "I'm Angie",  hair: "curly",     user_type: "blogger", users_id: User.find_by(email: "ambethoney@yahoo.com").id },
  { image_url: "https://lh5.googleusercontent.com/-9fBvI_i-qFA/AAAAAAAAAAI/AAAAAAAAF3",                         name: "Sade",     location: "New York",      bio: "I'm Sade",   hair:  "faux locs", user_type: "blogger", users_id: User.find_by(email: "sadeshakur@gmail.com").id },
  { image_url: "https://a1-images.myspacecdn.com/images03/34/8e810ee9e1ca4cdb9dc3d1a63c9a04f2/300x300.jpg",     name: "Dennis",   location: "New York",      bio: "I'm Dennis", hair: "natural",   user_type: "blogger", users_id: User.find_by(email: "dennisliaw@gmail.com").id },
  { image_url: "https://lh3.googleusercontent.com/-Fjl27OEzr0g/AAAAAAAAAAI/AAAAAAAAADE/HwDWA8zpDDs/photo.jpg",  name: "Dana",     location: "New York",      bio: "I'm Dana",   hair: "straight",  user_type: "blogger", users_id: User.find_by(email: "dana.dflip@gmail.com").id }
])

Event.create([
  { pic_url: "http://www.brooklynvegan.com/img/music/afropunk/2012/day1/54.jpg",  title: "Angelina", category: "brunch", location: "New York", date: "April 13 2015", time: "7PM", description: "fun", users_id: User.find_by(email: "ambethoney@yahoo.com").id},
  { pic_url: "http://www.brooklynvegan.com/img/music/afropunk/2012/day1/54.jpg",  title: "Sade",     category: "brunch", location: "New York", date: "April 13 2015", time: "7PM", description: "fun", users_id: User.find_by(email: "sadeshakur@gmail.com").id},
  { pic_url: "http://www.brooklynvegan.com/img/music/afropunk/2012/day1/54.jpg",  title: "Dennis",   category: "brunch", location: "New York", date: "April 13 2015", time: "7PM", description: "fun", users_id: User.find_by(email: "dennisliaw@gmail.com").id},
  { pic_url: "http://www.brooklynvegan.com/img/music/afropunk/2012/day1/54.jpg",  title: "Dana",     category: "brunch", location: "New York", date: "April 13 2015", time: "7PM", description: "fun", users_id: User.find_by(email: "dana.dflip@gmail.com").id}
])


