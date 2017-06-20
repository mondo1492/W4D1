class ArtworkShare < ApplicationRecord
  validates :artwork_id, null: false
  validates :viewer_id, null: false
  validates :artwork_id, uniqueness: {scope: viewer_id}

  belongs_to :artwork,
  primary_key: :id,
  foreign_key: :artwork_id,
  class_name: :Artwork

  belongs_to :viewer,
  primary_key: :id,
  foreign_key: :viewer_id,
  class_name: :User
end
