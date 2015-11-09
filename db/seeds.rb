User.create!(name:  "Supervisor",
             email: "tuanna@gmail.com",
             password: "123456",
             password_confirmation: "123456",
             supervisor: true)
20.times do |n|
  name  = Faker::Name.name
  email = "trainee-#{n+1}@gmail.com"
  password = "123456"
  supers = "false"
  User.create!(name:  name,
   email: email,
   password:              password,
   password_confirmation: password,
   supervisor: supers)
end

20.times do |n|
  name  = Faker::Name.name
  email = "supervisor-#{n+1}@gmail.com"
  password = "123456"
  supers = "true"
  User.create!(name:  name,
   email: email,
   password:              password,
   password_confirmation: password,
   supervisor: supers)
end

50.times do |n|
  name  = Faker::Lorem.word
  description = Faker::Lorem.paragraph
  Subject.create!(name:  name,
  description: description)
end
