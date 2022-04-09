# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Admin.destroy_all
Teacher.destroy_all
Student.destroy_all

Admin.create!(
  email: "admin@gmail.com",
  password:              "187phandinhphung",
  password_confirmation: "187phandinhphung")

teacher = Teacher.create!(
  email: "minhchau@gmail.com",
  password:              "123456",
  password_confirmation: "123456")

Student.create!(
  email: "lhban@gmail.com",
  password: "zBPGMr4i",
  password_confirmation: "zBPGMr4i",
  teacher_id: teacher.id
)
Student.create!(
  email: "ctpanh@gmail.com",
  password: "i6ciYnJq",
  password_confirmation: "i6ciYnJq",
  teacher_id: teacher.id
)
Student.create!(
  email: "ttkanh@gmail.com",
  password: "Q04k3VBu",
  password_confirmation: "Q04k3VBu",
  teacher_id: teacher.id
)
Student.create!(
  email: "ntbinh@gmail.com",
  password: "BBB550uE",
  password_confirmation: "BBB550uE",
  teacher_id: teacher.id
)
Student.create!(
  email: "ttqchi@gmail.com",
  password: "oM3pOzRt",
  password_confirmation: "oM3pOzRt",
  teacher_id: teacher.id
)
Student.create!(
  email: "ptmhao@gmail.com",
  password: "DXuH28xp",
  password_confirmation: "DXuH28xp",
  teacher_id: teacher.id
)
Student.create!(
  email: "tqhoang@gmail.com",
  password: "xKK22t4h",
  password_confirmation: "xKK22t4h",
  teacher_id: teacher.id
)
Student.create!(
  email: "ltmhuy@gmail.com",
  password: "LJjl15cC",
  password_confirmation: "LJjl15cC",
  teacher_id: teacher.id
)
Student.create!(
  email: "tnghuy@gmail.com",
  password: "b1WRgUwH",
  password_confirmation: "b1WRgUwH",
  teacher_id: teacher.id
)
Student.create!(
  email: "pbakiet@gmail.com",
  password: "wap38vUv",
  password_confirmation: "wap38vUv",
  teacher_id: teacher.id
)
Student.create!(
  email: "lhnminh@gmail.com",
  password: "2DbCJ8wx",
  password_confirmation: "2DbCJ8wx",
  teacher_id: teacher.id
)
Student.create!(
  email: "plminh@gmail.com",
  password: "5MtPDdjp",
  password_confirmation: "5MtPDdjp",
  teacher_id: teacher.id
)
Student.create!(
  email: "pttnga@gmail.com",
  password: "jOuQ4Qbi",
  password_confirmation: "jOuQ4Qbi",
  teacher_id: teacher.id
)
Student.create!(
  email: "hbngoc@gmail.com",
  password: "N8FCu3hy",
  password_confirmation: "N8FCu3hy",
  teacher_id: teacher.id
)
Student.create!(
  email: "nntngoc@gmail.com",
  password: "RTTJ7QvJ",
  password_confirmation: "RTTJ7QvJ",
  teacher_id: teacher.id
)
Student.create!(
  email: "tdhnhan@gmail.com",
  password: "L2128WjJ",
  password_confirmation: "L2128WjJ",
  teacher_id: teacher.id
)
Student.create!(
  email: "dtynhi@gmail.com",
  password: "NYdazV2P",
  password_confirmation: "NYdazV2P",
  teacher_id: teacher.id
)
Student.create!(
  email: "lnmphuong@gmail.com",
  password: "l1yIVsLM",
  password_confirmation: "l1yIVsLM",
  teacher_id: teacher.id
)
Student.create!(
  email: "nvhquy@gmail.com",
  password: "5CgR3pKn",
  password_confirmation: "5CgR3pKn",
  teacher_id: teacher.id
)
Student.create!(
  email: "pqquy@gmail.com",
  password: "yBF5Vh1I",
  password_confirmation: "yBF5Vh1I",
  teacher_id: teacher.id
)
Student.create!(
  email: "ldtthanh@gmail.com",
  password: "i11kR8sJ",
  password_confirmation: "i11kR8sJ",
  teacher_id: teacher.id
)
Student.create!(
  email: "tntien@gmail.com",
  password: "dD9smZ8H",
  password_confirmation: "dD9smZ8H",
  teacher_id: teacher.id
)
Student.create!(
  email: "phptran@gmail.com",
  password: "4o0fIGJy",
  password_confirmation: "4o0fIGJy",
  teacher_id: teacher.id
)
Student.create!(
  email: "ttnuyen@gmail.com",
  password: "TWWvs15U",
  password_confirmation: "TWWvs15U",
  teacher_id: teacher.id
)
Student.create!(
  email: "ndkvan@gmail.com",
  password: "mTFu4IOy",
  password_confirmation: "mTFu4IOy",
  teacher_id: teacher.id
)
Student.create!(
  email: "tnuvu@gmail.com",
  password: "8QrbJ1bs",
  password_confirmation: "8QrbJ1bs",
  teacher_id: teacher.id
)
Student.create!(
  email: "mkvy@gmail.com",
  password: "uN2Oomh8",
  password_confirmation: "uN2Oomh8",
  teacher_id: teacher.id
)
Student.create!(
  email: "nkxuyen@gmail.com",
  password: "gtg1yLly",
  password_confirmation: "gtg1yLly",
  teacher_id: teacher.id
)
