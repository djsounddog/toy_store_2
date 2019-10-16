# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user_ids = []
manufacturer_ids = []

for i in 1..10
    user = User.create(
        email: "test#{i}@test.com",
        password: "password#{i}"
    )
    p "Created #{i} users!"

    user_ids.push(user.id)

    manufacturer = Manufacturer.create(
        name: "Manufacturer#{i}",
        location: "Location#{i}"
    )
    p "Created #{i} manufacturers!"

    manufacturer_ids.push(manufacturer.id)
end


for i in 1..20
    Toy.create(
        name: "Toy#{i}",
        description: "Toy#{i} is super safe",
        date_posted: Time.now,
        user_id: user_ids.sample,
        manufacturer_id: manufacturer_ids.sample
    )

    p "Created #{i} toys!"
end