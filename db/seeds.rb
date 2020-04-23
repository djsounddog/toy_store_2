# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

(1..3).each do |_x|
  user = User.create(
    email: Faker::Internet.email,
    password: '123456'
  )
  2.times do |i|
    Toy.create(
      name: "Toy#{i}",
      description: "Toy#{i} is super safe",
      date_posted: Time.now,
      posted_by: %w[Sally Sam Tyson Mark].sample,
      user_id: user[:id]
    )
  end
end
