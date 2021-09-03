class AddColumnToTeachers < ActiveRecord::Migration[6.1]
  def change
    add_column :teachers, :name, :string
    add_column :teachers, :phone, :string
    add_column :teachers, :address, :text
    add_column :teachers, :gender, :string
    add_column :teachers, :avatar, :string
    add_column :teachers, :class_name, :string
    add_column :teachers, :school_year, :string
    add_column :teachers, :description, :text
  end
end
