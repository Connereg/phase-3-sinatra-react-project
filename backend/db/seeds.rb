puts "🌱 Seeding Users..."
5.times do
    User.create(name: Faker::Name.name, password: "123")
end

puts "🌱 Seeding Notes..."
    Note.create(title: "Ruby Notes", content: "RUBY uses gems!!!!", format: "Lecture", difficulty: 2, user_id: 1)
    Note.create(title: "Javascript Notes", content: "Javascript uses functions!!!", format: "Test", difficulty: 3, user_id: 2)
    Note.create(title: "React Notes", content: "React uses components amazing!!", format: "Reading", difficulty: 4, user_id: 3)
    Note.create(title: "SQL Notes", content: "SQL uses SQL", format: "Online Resource", difficulty: 5, user_id: 4)
    Note.create(title: "AR Notes", content: "Active Record uses databases", format: "Study Group", difficulty: 6, user_id: 5)


puts "🌱 Seeding Comments..."
# rand_names = User.all.select("name")

# 50.times do
#     Comment.create(name: rand(rand_names), )
# end


puts "✅ Done seeding!"
