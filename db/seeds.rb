# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(first_name: "", last_name: "", username: "", password_digest: "")

Episode.create!(episode_name: "", show_season: "", show_id: )

Show.create!(show_name: "", genre: "")

UserShow.create!(user_id, show_id)

View.create!(user_id: , episode_id: , review: "")