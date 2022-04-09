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
  id: 1,
  email: "lhban@gmail.com",
  password: "zBPGMr4i",
  password_confirmation: "zBPGMr4i",
  name: "Lê Hoàng Bình An",
  teacher_id: teacher.id
)
Student.create!(
  id: 2,
  email: "ctpanh@gmail.com",
  password: "i6ciYnJq",
  password_confirmation: "i6ciYnJq",
  name: "Cái Thị Phương Anh",
  teacher_id: teacher.id
)
Student.create!(
  id: 3,
  email: "ttkanh@gmail.com",
  password: "Q04k3VBu",
  password_confirmation: "Q04k3VBu",
  name: "Trần Thị Kim Anh",
  teacher_id: teacher.id
)
Student.create!(
  id: 4,
  email: "ntbinh@gmail.com",
  password: "BBB550uE",
  password_confirmation: "BBB550uE",
  name: "Nguyễn Thái Bình",
  teacher_id: teacher.id
)
Student.create!(
  id: 5,
  email: "ttqchi@gmail.com",
  password: "oM3pOzRt",
  password_confirmation: "oM3pOzRt",
  name: "Trương Thị Quỳnh Chi",
  teacher_id: teacher.id
)
Student.create!(
  id: 6,
  email: "ptmhao@gmail.com",
  password: "DXuH28xp",
  password_confirmation: "DXuH28xp",
  name: "Phạm Thị Mỹ Hảo",
  teacher_id: teacher.id
)
Student.create!(
  id: 7,
  email: "tqhoang@gmail.com",
  password: "xKK22t4h",
  password_confirmation: "xKK22t4h",
  name: "Trần Quốc Hoàng",
  teacher_id: teacher.id
)
Student.create!(
  id: 8,
  email: "ltmhuy@gmail.com",
  password: "LJjl15cC",
  password_confirmation: "LJjl15cC",
  name: "Lê Tấn Minh Huy",
  teacher_id: teacher.id
)
Student.create!(
  id: 9,
  email: "tnghuy@gmail.com",
  password: "b1WRgUwH",
  password_confirmation: "b1WRgUwH",
  name: "Trần Nguyễn Gia Huy",
  teacher_id: teacher.id
)
Student.create!(
  id: 10,
  email: "pbakiet@gmail.com",
  password: "wap38vUv",
  password_confirmation: "wap38vUv",
  name: "Phan Bảo Anh Kiệt",
  teacher_id: teacher.id
)
Student.create!(
  id: 11,
  email: "lhnminh@gmail.com",
  password: "2DbCJ8wx",
  password_confirmation: "2DbCJ8wx",
  name: "Lê Hoàng Nhật Minh",
  teacher_id: teacher.id
)
Student.create!(
  id: 12,
  email: "plminh@gmail.com",
  password: "5MtPDdjp",
  password_confirmation: "5MtPDdjp",
  name: "Phạm Lê Minh",
  teacher_id: teacher.id
)
Student.create!(
  id: 13,
  email: "pttnga@gmail.com",
  password: "jOuQ4Qbi",
  password_confirmation: "jOuQ4Qbi",
  name: "Phan Thị Thanh Nga",
  teacher_id: teacher.id
)
Student.create!(
  id: 14,
  email: "hbngoc@gmail.com",
  password: "N8FCu3hy",
  password_confirmation: "N8FCu3hy",
  name: "Hà Bảo Ngọc",
  teacher_id: teacher.id
)
Student.create!(
  id: 15,
  email: "nntngoc@gmail.com",
  password: "RTTJ7QvJ",
  password_confirmation: "RTTJ7QvJ",
  name: "Nguyễn Thị Thu Ngọc",
  teacher_id: teacher.id
)
Student.create!(
  id: 16,
  email: "tdhnhan@gmail.com",
  password: "L2128WjJ",
  password_confirmation: "L2128WjJ",
  name: "Tô Đông Hoàng Nhân",
  teacher_id: teacher.id
)
Student.create!(
  id: 17,
  email: "dtynhi@gmail.com",
  password: "NYdazV2P",
  password_confirmation: "NYdazV2P",
  name: "Dương Thị Yến Nhi",
  teacher_id: teacher.id
)
Student.create!(
  id: 18,
  email: "lnmphuong@gmail.com",
  password: "l1yIVsLM",
  password_confirmation: "l1yIVsLM",
  name: "Lê Nguyễn Minh Phương",
  teacher_id: teacher.id
)
Student.create!(
  id: 19,
  email: "nvhquy@gmail.com",
  password: "5CgR3pKn",
  password_confirmation: "5CgR3pKn",
  name: "Nguyễn Văn Hoàng Quý",
  teacher_id: teacher.id
)
Student.create!(
  id: 20,
  email: "pqquy@gmail.com",
  password: "yBF5Vh1I",
  password_confirmation: "yBF5Vh1I",
  name: "Phan Quốc Quý",
  teacher_id: teacher.id
)
Student.create!(
  id: 21,
  email: "ldtthanh@gmail.com",
  password: "i11kR8sJ",
  password_confirmation: "i11kR8sJ",
  name: "Lê Dương Tất Thành",
  teacher_id: teacher.id
)
Student.create!(
  id: 22,
  email: "tntien@gmail.com",
  password: "dD9smZ8H",
  password_confirmation: "dD9smZ8H",
  name: "Trần Ngọc Tiến",
  teacher_id: teacher.id
)
Student.create!(
  id: 23,
  email: "phptran@gmail.com",
  password: "4o0fIGJy",
  password_confirmation: "4o0fIGJy",
  name: "Phạm Hoàng Phương Trân",
  teacher_id: teacher.id
)
Student.create!(
  id: 24,
  email: "ttnuyen@gmail.com",
  password: "TWWvs15U",
  password_confirmation: "TWWvs15U",
  name: "Trần Thị Nhật Uyên",
  teacher_id: teacher.id
)
Student.create!(
  id: 25,
  email: "ndkvan@gmail.com",
  password: "mTFu4IOy",
  password_confirmation: "mTFu4IOy",
  name: "Nguyễn Đình Kiến Văn",
  teacher_id: teacher.id
)
Student.create!(
  id: 26,
  email: "tnuvu@gmail.com",
  password: "8QrbJ1bs",
  password_confirmation: "8QrbJ1bs",
  name: "Trần Ngọc Uy Vũ",
  teacher_id: teacher.id
)
Student.create!(
  id: 27,
  email: "mkvy@gmail.com",
  password: "uN2Oomh8",
  password_confirmation: "uN2Oomh8",
  name: "Mai Khánh Vy",
  teacher_id: teacher.id
)
Student.create!(
  id: 28,
  email: "nkxuyen@gmail.com",
  password: "gtg1yLly",
  password_confirmation: "gtg1yLly",
  name: "Nguyễn Kim Xuyến",
  teacher_id: teacher.id
)
