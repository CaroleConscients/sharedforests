# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Certificate.destroy_all
Parcel.destroy_all

puts "Creating parcels..."
parcel = Parcel.create!({
  unique_number: "AH-PE-12345",
  latitude: -6.482427,
  longitude: -76.375666,
  farmer_name: "Genry Valles Panduro",
  tree_quantity: 200,
  tree_quantity_remaining: 99,
  tree_species: "Capirona"
  })

puts "Creating certificates..."
Certificate.create! ({
  parcel: parcel,
  name: "papa",
  message: "merci",
  trees_quantity: 2
  })

puts "Finished!"
# Parcel.create!({
#   unique_number:
#   latitude:
#   longitude:
#   farmer_name:
#   tree_quantity:
#   tree_quantity_remaining:
#   tree_species:
#   })
