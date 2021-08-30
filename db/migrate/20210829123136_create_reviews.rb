class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :teacher_id
      t.integer :student_id
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
