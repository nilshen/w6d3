# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all # belongs to Yips and Users
Artwork.destroy_all # belongs to Users
ArtworkShare.destroy_all


artist1 = User.create!(username: "Picasso")
artist2 = User.create!(username: "Van Go")

# artist5 = User.create!(username: "Pico")
# artist6 = User.create!(username: "Va Go")

artwork1 = Artwork.create!(title: "Broken Ear Man", image_url: "broken_ear_dude", artist_id: User.first.id)
artwork2 = Artwork.create!(title: "Zoom Background", image_url: "space", artist_id: User.last.id)

artwork_share1 = ArtworkShare.create!(viewer_id: User.first.id, artwork_id: Artwork.first.id)
artwork_share2 = ArtworkShare.create!(viewer_id: User.last.id, artwork_id: Artwork.last.id)
