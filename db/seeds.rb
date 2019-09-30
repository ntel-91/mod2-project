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
whats_happening = Show.create!(show_name: "What's Happening!!", genre: "Comedy", show_cover: "https://upload.wikimedia.org/wikipedia/en/7/7d/Whatshappening.jpg")
black_saddle = Show.create!(show_name: "Black Saddle", genre: "Mystery", show_cover: "https://image.tmdb.org/t/p/w500_and_h282_face/v7PBbC7163SHiBpWnQpJH1PZZzc.jpg")
the_rifleman = Show.create!(show_name: "The Rifleman", genre: "Mystery", show_cover: "https://i.ytimg.com/vi/yW6Ki8wpL5s/hqdefault.jpg")
combat = Show.create!(show_name: "Combat!", genre: "Mystery", show_cover: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdpChJDOv9OGQoF8w1dLI6gxF7lLwmpXXGsnLYa1J8N6-vd8iI")
invader_zim = Show.create!(show_name: "Invader Zim", genre: "Young Adult", show_cover: "https://static3.cbrimages.com/wordpress/wp-content/uploads/2018/07/invader-zim-header.jpg")
good_times = Show.create!(show_name: "Good Times", genre: "Comedy", show_cover: "https://vignette.wikia.nocookie.net/goodtimes/images/c/c3/Good-Times-1.jpg/revision/latest?cb=20140804022418")
# Show.create!(show_name: "", genre: "", show_cover: "")
# Show.create!(show_name: "", genre: "", show_cover: "")
# Show.create!(show_name: "", genre: "", show_cover: "")


Episode.destroy_all
zg_1 = Episode.create!(episode_name: "Live at the Purple Onion (1/4)", show_season: "1", show_id: zach_galifianakis.id, video_link: "https://www.youtube.com/watch?v=XNlI-WuVHeQ" )
zg_2 = Episode.create!(episode_name: "Live at the Purple Onion (2/4)", show_season: "1", show_id: zach_galifianakis.id, video_link: "https://www.youtube.com/watch?v=xTbrM3ubUDU&t=55s" )
zg_3 = Episode.create!(episode_name: "Live at the Purple Onion (3/4)", show_season: "1", show_id: zach_galifianakis.id, video_link: "https://www.youtube.com/watch?v=1AILBQkzd5Q&t=16s" )
zg_4 = Episode.create!(episode_name: "Live at the Purple Onion (4/4)", show_season: "1", show_id: zach_galifianakis.id, video_link: "https://www.youtube.com/watch?v=Gwqc5t7OcLU&t=30s" )
c_1 = Episode.create!(episode_name: "Murder By the Book (S01 E01)", show_season: "1", show_id: columbo.id, video_link: "https://www.youtube.com/watch?v=aWY1-ukV2M4")
h_1 = Episode.create!(episode_name: "Metamorphosis (S01 E01)", show_season: "1", show_id: h2o.id, video_link: "https://www.youtube.com/watch?v=8FTcL_9dmrs")
h_2 = Episode.create!(episode_name: "Pool Party (S01 E02)", show_season: "1", show_id: h2o.id, video_link: "https://www.youtube.com/watch?v=5ShDTCMWJPk")
h_3 = Episode.create!(episode_name: "Catch of the Day (S01 E03)", show_season: "1", show_id: h2o.id, video_link: "https://www.youtube.com/watch?v=00bMRZOijJg&t=40s")
h_4 = Episode.create!(episode_name: "Party Girls (S01 E04)", show_season: "1", show_id: h2o.id, video_link: "https://www.youtube.com/watch?v=LmY8qdoF-4k&t=36s")
h_5 = Episode.create!(episode_name: "Stormy Weather (S02 E01)", show_season: "1", show_id: h2o.id, video_link: "https://www.youtube.com/watch?v=IJV38zHyTkA")
h_6 = Episode.create!(episode_name: "Control (S02 E02)", show_season: "1", show_id: h2o.id, video_link: "https://www.youtube.com/watch?v=f2a-QEzrzok")
h_7 = Episode.create!(episode_name: "The One That Got Away (S02 E03)", show_season: "1", show_id: h2o.id, video_link: "https://www.youtube.com/watch?v=7xqijHmHjIg&list=PLU5KGt6g4OkE0u4I73GVRbrd4bVkEXLbw&index=3")
wh_1 = Episode.create!(episode_name: "The Runaway (S1 E1)", show_season: "1", show_id: whats_happening.id, video_link: "https://www.youtube.com/watch?v=IGQynd4xaDs&list=PLeq9gIJ_Y97M3iuacnWcHdQhIpwZVbEfD&index=2&t=0s")
wh_2 = Episode.create!(episode_name: "The Birthday Present (S1 E2)", show_season: "1", show_id: whats_happening.id, video_link: "https://www.youtube.com/watch?v=eItKEG9cuEY&list=PLeq9gIJ_Y97M3iuacnWcHdQhIpwZVbEfD&index=3&t=0s")
bs_1 = Episode.create!(episode_name: " Client Travers (S1 E1)", show_season: "1", show_id: black_saddle.id, video_link: "https://www.youtube.com/watch?v=R4QytrghdVA")
bs_1 = Episode.create!(episode_name: " Sharpshooter (S1 E1)", show_season: "1", show_id: the_rifleman.id, video_link: "https://www.youtube.com/watch?v=yW6Ki8wpL5s")
bs_1 = Episode.create!(episode_name: " Forgotten Front (S1 E1)", show_season: "1", show_id: combat.id, video_link: "https://www.youtube.com/watch?v=IS4grrSWuZo")
iv_1 = Episode.create!(episode_name: "The Nightmare Begins (S1 E1)", show_season: "1", show_id: invader_zim.id, video_link: "https://www.youtube.com/watch?v=U6pQNP0Dv1s")
gt_1 = Episode.create!(episode_name: "Black Jesus (S1 E3)", show_season: "1", show_id: good_times.id, video_link: "https://www.youtube.com/watch?v=SJqzjVjY0Go&list=PLeq9gIJ_Y97MIP0gqp0FPKqhuA0bH4qd_&index=2")
# Episode.create!(episode_name: "", show_season: "", show_id: .id, video_link: "")
# Episode.create!(episode_name: "", show_season: "", show_id: .id, video_link: "")


UserShow.destroy_all
UserShow.create!(user_id: ham.id, show_id: zach_galifianakis.id)
UserShow.create!(user_id: ham.id, show_id: columbo.id)
UserShow.create!(user_id: ham.id, show_id: h2o.id)
UserShow.create!(user_id: ham.id, show_id: whats_happening.id)


View.destroy_all
View.create!(user_id: ham.id, episode_id: zg_1.id, review: "grest")
View.create!(user_id: ham.id, episode_id: zg_2.id, review: "ok")
View.create!(user_id: ham.id, episode_id: c_1.id)
View.create!(user_id: ham.id, episode_id: h_1.id, review: "fine")
View.create!(user_id: ham.id, episode_id: h_2.id)
View.create!(user_id: ham.id, episode_id: h_3.id, review: "it was great")
View.create!(user_id: ham.id, episode_id: wh_1.id, review: "Dynomite")