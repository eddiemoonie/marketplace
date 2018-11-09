# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(
  :id => 1,
  :username => "Brian",
  :password => "shim",
  :email => "brianshim@gmail.com"
)

User.create(
  :id => 2,
  :username => "Eddie",
  :password => "moon",
  :email => "eddiemoonie@gmail.com"
)

User.create(
  :id => 3,
  :username => "Kevin",
  :password => "kwon",
  :email => "kevinkwon@gmail.com"
)
