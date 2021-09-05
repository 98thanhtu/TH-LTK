class Noti < ApplicationRecord
    validates :title, presence: true, length: { maximum: 100 }
    validates :content, presence: true
    validates :teacher_id, presence: true
    
    belongs_to :teacher
end
