User.create!(name:  "Supervisor",
             email: "tuanna@gmail.com",
             password: "123456",
             password_confirmation: "123456",
             supervisor: true)
20.times do |n|
  name  = Faker::Name.name
  email = "admin-#{n+1}@gmial.com"
  password = "password"
  supers = "false"
  User.create!(name:  name,
   email: email,
   password:              password,
   password_confirmation: password,
   supervisor: supers)
end

20.times do |n|
name =  "day la khoa hoc k123#{n}"
Course.create!(
  name: name)
end
