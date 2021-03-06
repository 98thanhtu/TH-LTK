class Teacher < ApplicationRecord
  mount_uploader :avatar, PictureUploader
  has_many :notis
  has_many :students
  has_many :products
  has_many :bookings

  validates :address, length: { maximum: 200 }
  validates :name, length: { maximum: 100 }
  validates :description, length: { maximum: 300 }
  validates :avatar, file_size: { less_than: 1.megabytes }

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def full_class_name
    "#{class_name} (#{school_year})"
  end
end
