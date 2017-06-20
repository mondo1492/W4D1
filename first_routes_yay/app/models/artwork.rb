class Artwork < ApplicationRecord
  validates :title, null: false
  validates :artist_id, null: false
  validates :image_url, null: false
  validates :title, uniqueness: { scope: :artist_id,
  message: "artist can't name two pieces the same thing"}

  belongs_to :artist,
    primary_key: :id,
    foreign_key: :artist_id,
    class_name: :User

  has_many :views,
    primary_key: :id,
    foreign_key: :artwork_id,
    class_name: :ArtworkShare

  has_many :shared_viewers,
    through: :views,
    source: :viewer
end
