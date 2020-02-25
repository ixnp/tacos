# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Truck.create(name:"I don't wanna taco-bout it", location:"seattle")
Truck.create(name:"not-tacobell", location:"portland")
Truck.create(name:"taco?", location:"portland")

Taco.create(meat:"chicken", zest: 4, spicy: 2, truck_id:1)
Taco.create(meat:"fish", zest: 6, spicy: 1, truck_id:2)
Taco.create(meat:"pork", zest: 4, spicy: 5, truck_id:3)

