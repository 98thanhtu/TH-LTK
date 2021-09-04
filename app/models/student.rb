class Student < ApplicationRecord
  mount_uploader :avatar, PictureUploader
  belongs_to :teacher
  has_many :reviews

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable

end
