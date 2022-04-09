class Product < ApplicationRecord
  has_many :booking
  belongs_to :teacher

  mount_uploader :image, PictureUploader
  validates :name, presence: true
  validates :price, presence: true
  validates :description, presence: true
  validates :quantity, presence: true
  validates :image, file_size: { less_than: 3.megabytes }
end
