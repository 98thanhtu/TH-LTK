class AddColumnToStudents < ActiveRecord::Migration[6.1]
  def change
    add_column :students, :name, :string
    add_column :students, :phone, :string
    add_column :students, :address, :text
    add_column :students, :gender, :string
    add_column :students, :avatar, :string
    add_column :students, :good_mark, :integer, default: 0
    add_column :students, :bad_mark, :integer, default: 0
    add_column :students, :avg_mark, :integer, default: 0
    add_column :students, :teacher_id, :integer
    add_column :students, :description, :text
  end
end
