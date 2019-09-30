# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
# abe = User.create!(first_name: "Abe", last_name: "Limpleton", username: "in_jail_out_soon", password_digest: )
# randy = User.create!(first_name: "Randy 'The Meat Machine'", last_name: "Johnson", username: "herpes_free_since_03", password_digest: )
# chip = User.create!(first_name: "Chip", last_name: "Whitley", username: "shaquille_oatmeal", password_digest: )
ham = User.create!(first_name: "Ham", last_name: "Diglet", username: "bill_nye_the_russian_spy")


Show.destroy_all
zach_galifianakis = Show.create!(show_name: "Zach Galifianakis", genre: "Comedy", show_cover: "https://i.ebayimg.com/images/g/jMYAAOSwyQtV3gqE/s-l300.jpg")
          columbo = Show.create!(show_name: "Columbo", genre: "Mystery", show_cover: "https://media.cozitv.com/images/700*394/COLUMBO+Thumbnail.jpg")
              h2o = Show.create!(show_name: "H2O", genre: "Young Adult", show_cover: "https://images-na.ssl-images-amazon.com/images/I/81nZ+dx8NhL._RI_.jpg")
# Show.create!(show_name: "", genre: "")


Episode.destroy_all
zg_1 = Episode.create!(episode_name: "Live at the Purple Onion (1/4)", show_season: "1", show_id: zach_galifianakis.id )
zg_2 = Episode.create!(episode_name: "Live at the Purple Onion (2/4)", show_season: "1", show_id: zach_galifianakis.id )
zg_3 = Episode.create!(episode_name: "Live at the Purple Onion (3/4)", show_season: "1", show_id: zach_galifianakis.id )
zg_4 = Episode.create!(episode_name: "Live at the Purple Onion (4/4)", show_season: "1", show_id: zach_galifianakis.id )
c_1 = Episode.create!(episode_name: "Murder By the Book (S01 E01)", show_season: "1", show_id: columbo.id)
h_1 = Episode.create!(episode_name: "Metamorphosis (S01 E01)", show_season: "1", show_id: h2o.id)
h_2 = Episode.create!(episode_name: "Pool Party (S01 E02)", show_season: "1", show_id: h2o.id)
h_3 = Episode.create!(episode_name: "Catch of the Day (S01 E03)", show_season: "1", show_id: h2o.id)
h_4 = Episode.create!(episode_name: "Party Girls (S01 E04)", show_season: "1", show_id: h2o.id)
h_5 = Episode.create!(episode_name: "Stormy Weather (S02 E01)", show_season: "1", show_id: h2o.id)
h_6 = Episode.create!(episode_name: "Control (S02 E02)", show_season: "1", show_id: h2o.id)
h_7 = Episode.create!(episode_name: "The One That Got Away (S02 E03)", show_season: "1", show_id: h2o.id)
# Episode.create!(episode_name: "", show_season: "", show_id: .id)


UserShow.destroy_all
UserShow.create!(user_id: ham.id, show_id: zach_galifianakis.id)
UserShow.create!(user_id: ham.id, show_id: columbo.id)
UserShow.create!(user_id: ham.id, show_id: h2o.id)


View.destroy_all
View.create!(user_id: ham.id, episode_id: zg_1.id, review: "grest")
View.create!(user_id: ham.id, episode_id: zg_2.id, review: "ok")
View.create!(user_id: ham.id, episode_id: c_1.id)
View.create!(user_id: ham.id, episode_id: h_1.id, review: "fine")
View.create!(user_id: ham.id, episode_id: h_2.id)
View.create!(user_id: ham.id, episode_id: h_3.id, review: "it was great")