class Student < ApplicationRecord
  belongs_to :course
  has_many :reviews
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def full_class_name
    "#{first_name} #{last_name}"
  end
end
