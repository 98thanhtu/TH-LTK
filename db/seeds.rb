# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Admin.create!(
    email: "admin@gmail.com",
    password:              "123456",
    password_confirmation: "123456")

5.times do |n|    
    email = "gv#{n+1}@gmail.com"
    class_name = "n+1"
    password = "222222"
    Teacher.create!(
        name: Faker::Name.name,
        class_name: class_name,
        email: email,
        password:              password,
        password_confirmation: password)
end

10.times do |n|
    email = "hs#{n+1}@gmail.com"
    password = "111111"
    teacher_id = 1
    Student.create!(
        name: Faker::Name.name,
        teacher_id: teacher_id,
        email: email,
        password:              password,
        password_confirmation: password)
end
