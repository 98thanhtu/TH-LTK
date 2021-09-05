# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Admin.create!(
    email: "admin@gmail.com",
    password:              "1ouaAALtlWWSSGQt8sjuI3poNpJLrNOro",
    password_confirmation: "1ouaAALtlWWSSGQt8sjuI3poNpJLrNOro")

Teacher.create!(
    email: "minhchautran.ltk@gmail.com",
    password:              "123456",
    password_confirmation: "123456")

36.times do |n|
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
