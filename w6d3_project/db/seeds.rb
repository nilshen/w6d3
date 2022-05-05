# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# artist1 = User.create!(username: "Picasso")
# artist2 = User.create!(username: "Van Go")

# artist5 = User.create!(username: "Pico")
# artist6 = User.create!(username: "Va Go")

artwork1 = Artwork.create!(title: "Broken Ear Man", image_url: "broken_ear_dude", artist_id: 1)
artwork2 = Artwork.create!(title: "Zoom Background", image_url: "space", artist_id: 2)

artwork_share1 = ArtworkShare.create!()