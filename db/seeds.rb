User.create(name: "管理者",
            email: "email@gmail.com",
            password: "password",
            password_confirmation: "password",
            admin: true)

2.times do |i|
  name = Faker::Name.name
  email = "email#{i+1}@gmail.com"
  password = "password"
  User.create!(name: name,
              email: email,
              password: password,
              password_confirmation: password)
end