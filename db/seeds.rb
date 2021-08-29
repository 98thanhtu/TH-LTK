# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Teacher.create!(
    email: "admin@gmail.com",
    password:              "0384424545",
    password_confirmation: "0384424545")

99.times do |n|
    email = "hs#{n+1}@gmail.com"
    password = "111111"
    Student.create!(
        email: email,
        password:              password,
        password_confirmation: password)
end
