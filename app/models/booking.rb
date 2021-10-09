class Booking < ApplicationRecord
    belongs_to :student
    belongs_to :teacher
    belongs_to :product

    enum status:  {
        new_booking: 1,
        confirmed: 2,
        completed: 3,
        canceled: 4
    }
end
