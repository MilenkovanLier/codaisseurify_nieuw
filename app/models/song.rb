class Song < ApplicationRecord
  belongs_to :artist


  validates :name_song, presence: true
  validates :name_artist, presence: true
  validates :duration, presence: true
  validates :genre, presence: true

end
