# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
Movie.destroy_all

100.times do |i|
  Movie.create(
    name: Faker::Movie.title,
    year: Faker::Number.within(range: 1900..2020),
    genre: ['action', 'horreur', 'comédie', 'drame'][rand(0..3)],
    synopsis: Faker::Lorem.sentence(word_count: 10, supplemental: true, random_words_to_add: 3),
    director: Faker::Name.name,
    allocine_rating: Faker::Number.within(range: 0.0..5.0).truncate(1),
    my_rating: nil,
    already_seen: false
  )
end