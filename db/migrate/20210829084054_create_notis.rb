class CreateNotis < ActiveRecord::Migration[6.1]
  def change
    create_table :notis do |t|
      t.integer :teacher_id
      t.integer :course_id
      t.string :title
      t.text :content
      t.boolean :is_read, default: false

      t.timestamps
    end
  end
end
