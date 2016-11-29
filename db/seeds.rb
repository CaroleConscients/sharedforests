# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Parcel.create!({
  unique_number: 21559,
  latitude: 7.26384,
  longitude: 76.79193,
  farmer_name: "Genry Valles Panduro",
  tree_quantity: 100,
  tree_quantity_remaining: 99,
  tree_species: "Capirona"
  })

# Parcel.create!({
#   unique_number:
#   latitude:
#   longitude:
#   farmer_name:
#   tree_quantity:
#   tree_quantity_remaining:
#   tree_species:
#   })
