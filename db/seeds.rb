# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Game.create!(name: "Preums")
User.create!(email: "oui@mail.com", nickname: "oui", password: "oui@mail.com")
User.create!(email: "non@mail.com", nickname: "non", password: "non@mail.com")
