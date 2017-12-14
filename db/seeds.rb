# Admin User
u = User.new
u.email = "admin@test.com"
u.password = "123456"
u.password_confirmation = "123456"
u.is_admin = true
u.save
puts "Admin已建好，帳號為#{u.email},密碼為#{u.password}"

# Initial Video
Video.create!(wistia: "8ooc2jvwoo",
  title: "dark-1",
  description: "dark-1",
  image: open("app/assets/images/dark1.png")
)

Video.create!(wistia: "hu3msaqtpo",
  title: "fight-1",
  description: "fight-1",
  image: open("app/assets/images/fight1.png")
)

Video.create!(wistia: "2uifiadmaj",
  title: "duck-1",
  description: "duck-1",
  image: open("app/assets/images/duck1.png")
)

Video.create!(wistia: "8ooc2jvwoo",
  title: "dark-2",
  description: "dark-2",
  image: open("app/assets/images/dark2.png")
)

Video.create!(wistia: "hu3msaqtpo",
  title: "fight-2",
  description: "fight-2",
  image: open("app/assets/images/fight2.png")
)

Video.create!(wistia: "2uifiadmaj",
  title: "duck-2",
  description: "duck-2",
  image: open("app/assets/images/duck2.png")
)

Video.create!(wistia: "8ooc2jvwoo",
  title: "dark-3",
  description: "dark-3",
  image: open("app/assets/images/dark3.png")
)

Video.create!(wistia: "hu3msaqtpo",
  title: "fight-2",
  description: "fight-",
  image: open("app/assets/images/fight2.png")
)

Video.create!(wistia: "2uifiadmaj",
  title: "duck-3",
  description: "duck-3",
  image: open("app/assets/images/duck3.png")
)
