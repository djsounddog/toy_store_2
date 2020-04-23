# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

3.times do
  user = User.create(
    email: Faker::Internet.email,
    password: '123456'
  )
end

4.times do
  man = Manufacturer.create(
    name: Faker::Company.name,
    location: Faker::Address.full_address
  )
  3.times do |x|
    user = User.find(x + 1)
    2.times do |i|
      Toy.create(
        name: "Toy#{i}",
        description: "Toy#{i} is super safe",
        date_posted: Time.now,
        posted_by: %w[Sally Sam Tyson Mark].sample,
        user_id: user[:id],
        manufacturer_id: man[:id]
      )
    end
  end
end
