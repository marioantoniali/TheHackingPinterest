require 'faker'

#remplis la table users (via la class) avec 10 faux noms
10.times do
  user = User.create(name: Faker::VForVendetta.character)
end

#remplis la table pins (via la class) avec 20 faux noms et url, et aleatoirement des user_id  
20.times do
    pin = Pin.create(name: Faker::PrincessBride.character, URL: Faker::Internet.url, user_id: rand(1..10))
  end

#remplis la table comments (via la class) avec 15 faux contenus, et aleatoirement des user_id et category_id
40.times do
    comment = Comment.create(title: Faker::Hobbit.character, body: Faker::HeyArnold.quote, user_id: rand(1..10), pin_id: rand(1..20) )
end
