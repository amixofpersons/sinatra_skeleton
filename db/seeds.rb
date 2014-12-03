require 'faker'
10.times do (User.create(name: Faker::Internet.user_name,
                         password: Faker::Internet.password))
end

20.times do (OriginalCharacter.create(title: Faker::Name.title,
              name: Faker::Name.name, age: Faker::Number.number(2),
              hair_color: Faker::Commerce.color,
              eye_color: Faker::Commerce.color,
              personality: Faker::Hacker.adjective,
              user_id: rand(1..10)))
end
