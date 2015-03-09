
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
  { full_name: "Angelina Bethoney", born_on: "April 13 1989",    phone: "774-291-0958", users_id: User.find_by(email: "ambethoney@yahoo.com").id},
  { full_name: "Sade Stevens",      born_on: "November 10 1991", phone: "516-043-7720", users_id: User.find_by(email: "sadeshakur@gmail.com").id},
  { full_name: "Dennis Liaw",       born_on: "May 16 1987",      phone: "678-455-9920", users_id: User.find_by(email: "dennisliaw@gmail.com").id},
  { full_name: "Dana DeFilipo",     born_on: "April 14 1991",    phone: "516-987-8427", users_id: User.find_by(email: "dana.dflip@gmail.com").id}
])

Profile.create([
  { profile_pic: "https://pbs.twimg.com/profile_images/532551444524593154/kp1YMZDU.jpeg",                         username: "Angelina", user_type: "blogger", website: "https://facebook.com", location: "Massachusetts", bio: "I'm Angie",  hair: "curly",      users_id: User.find_by(email: "ambethoney@yahoo.com").id },
  { profile_pic: "https://lh5.googleusercontent.com/-9fBvI_i-qFA/AAAAAAAAAAI/AAAAAAAAF3",                         username: "Sade",     user_type: "blogger", website: "https://facebook.com", location: "New York",      bio: "I'm Sade",   hair: "faux locs",  users_id: User.find_by(email: "sadeshakur@gmail.com").id },
  { profile_pic: "https://a1-images.myspacecdn.com/images03/34/8e810ee9e1ca4cdb9dc3d1a63c9a04f2/300x300.jpg",     username: "Dennis",   user_type: "blogger", website: "https://facebook.com", location: "New York",      bio: "I'm Dennis", hair: "natural",    users_id: User.find_by(email: "dennisliaw@gmail.com").id },
  { profile_pic: "https://lh3.googleusercontent.com/-Fjl27OEzr0g/AAAAAAAAAAI/AAAAAAAAADE/HwDWA8zpDDs/photo.jpg",  username: "Dana",     user_type: "blogger", website: "https://facebook.com", location: "New York",      bio: "I'm Dana",   hair: "straight",   users_id: User.find_by(email: "dana.dflip@gmail.com").id }
])

Event.create([
  { pic_url: "http://www.brooklynvegan.com/img/music/afropunk/2012/day1/54.jpg",  title: "afropunk",  category: "brunch", location: "New York", date: "April 13 2015", time: "7PM", description: "fun", users_id: User.find_by(email: "ambethoney@yahoo.com").id},
  { pic_url: "http://www.brooklynvegan.com/img/music/afropunk/2012/day1/54.jpg",  title: "afropunk",  category: "brunch", location: "New York", date: "April 13 2015", time: "7PM", description: "fun", users_id: User.find_by(email: "sadeshakur@gmail.com").id},
  { pic_url: "http://www.brooklynvegan.com/img/music/afropunk/2012/day1/54.jpg",  title: "afropunk",  category: "brunch", location: "New York", date: "April 13 2015", time: "7PM", description: "fun", users_id: User.find_by(email: "dennisliaw@gmail.com").id},
  { pic_url: "http://www.brooklynvegan.com/img/music/afropunk/2012/day1/54.jpg",  title: "afropunk",  category: "brunch", location: "New York", date: "April 13 2015", time: "7PM", description: "fun", users_id: User.find_by(email: "dana.dflip@gmail.com").id}
])


