class Course < ApplicationRecord
    has_many :notis
    belongs_to :teacher
    has_many :students

    def full_class_name
        "#{name} - #{school_year}"
    end
end
