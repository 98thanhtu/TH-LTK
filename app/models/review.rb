class Review < ApplicationRecord
    validates :title, presence: true, length: { maximum: 100 }
    validates :content, presence: true
    validates :teacher_id, presence: true
    validates :student_id, presence: true
    
    belongs_to :teacher
    belongs_to :student
end
