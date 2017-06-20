# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Artwork.destroy_all
ArtworkShare.destroy_all

# t.text     "title",      null: false
# t.text     "image_url",  null: false
# t.integer  "artist_id",  null: false
#
# t.integer  "artwork_id", null: false
# t.integer  "viewer_id",  null: false

user1 = User.create!(username: "aaron")
user2 = User.create!(username: "daniel")
user3 = User.create!(username: "bob")
user4 = User.create!(username: "salamander")

art1 = Artwork.create!(title: 'Mona Lisa', image_url: "a", artist_id: user3.id)
art2 = Artwork.create!(title: 'Starry Night', image_url: "b", artist_id: user4.id)

ArtworkShare.create!(artwork_id: art1.id, viewer_id: user1.id)
ArtworkShare.create!(artwork_id: art2.id, viewer_id: user1.id)
ArtworkShare.create!(artwork_id: art1.id, viewer_id: user2.id)
ArtworkShare.create!(artwork_id: art2.id, viewer_id: user2.id)
