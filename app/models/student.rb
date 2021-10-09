class Student < ApplicationRecord
  mount_uploader :avatar, PictureUploader
  belongs_to :teacher
  has_many :reviews
  has_many :bookings
  
  validates :teacher_id, presence: true
  validates :address, length: { maximum: 200 }
  validates :name, length: { maximum: 100 }
  validates :description, length: { maximum: 300 }
  validates :avatar, file_size: { less_than: 1.megabytes }

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable

end
