class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.integer :student_id
      t.integer :product_id
      t.integer :status, default: 1
      t.integer :teacher_id
      t.text :description

      t.timestamps
    end
  end
end
