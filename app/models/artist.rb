class Artist < ApplicationRecord
  has_many :songs, dependent: :destroy
  
  validates :name, presence: true
  validates :song, presence: true
  validates :name, uniqueness: true


  def self.order_by_name
    order(:name)
  end
end
