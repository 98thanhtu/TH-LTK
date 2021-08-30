class AddColumnToStudents < ActiveRecord::Migration[6.1]
  def change
    add_column :students, :name, :string
    add_column :students, :phone, :string
    add_column :students, :address, :text
    add_column :students, :gender, :string
    add_column :students, :avatar, :string
    add_column :students, :good_mark, :integer
    add_column :students, :bad_mark, :integer
    add_column :students, :teacher_id, :integer
  end
end
