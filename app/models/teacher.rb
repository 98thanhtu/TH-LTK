class Teacher < ApplicationRecord
  has_many :notis
  has_many :students
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def full_class_name
    "#{class_name} - #{school_year}"
  end
end
