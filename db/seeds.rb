# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }]
#   Character.create(name: 'Luke', movie: movies.first)
Article.destroy_all

30.times do
  url = "https://source.unsplash.com/random"
  body = ""
  rand(15...25).times do
    body << " " + Faker::Lorem.sentence
  end
  art = Article.new(name: Faker::Book.title, description: Faker::Lorem.sentence, content: body, date: Faker::Time.backward(days: 205, format: :long))
  sleep(3)
  art.remote_photo_url = url
  art.save
end
