class CreateCourses < ActiveRecord::Migration[6.1]
  def change
    create_table :courses do |t|
      t.integer :teacher_id
      t.string :name
      t.string :school_year

      t.timestamps
    end
  end
end
