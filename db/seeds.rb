# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."

UserCertificate.destroy_all
User.destroy_all
Certificate.destroy_all
Parcel.destroy_all

puts "Creating parcels..."

Parcel.create!({
  unique_number: "AH-PE-12345",
  latitude: 7.12839,
  longitude: -76.70769,
  farmer_name: "Juan Bautista Palacios Camizan",
  tree_quantity: 100,
  tree_quantity_remaining: 100,
  tree_species: "Capirona"
  })

Parcel.create!({
  unique_number: "AH-PE-12345",
  latitude: 6.482427,
  longitude: -76.375666,
  farmer_name: "Genry Valles Panduro",
  tree_quantity: 100,
  tree_quantity_remaining: 100,
  tree_species: "Capirona"
  })


puts "Creating certificates..."

Certificate.create! ({
  # unique_number: 
  parcel_id: 1,
  name: "maman",
  message: "je t'aime énormément",
  # date: 
  trees_quantity: 1,
  # created_at:            null: false
  # updated_at:            null: false
  # occasion:
  # users:
  # template:
  # template_border_color:
  # template_text_color:
  })

  Certificate.create! ({
  # unique_number: 
  parcel_id: 1,
  name: "papa",
  message: "je t'aime infiniment",
  # date: 
  trees_quantity: 1,
  # created_at:            null: false
  # updated_at:            null: false
  # occasion:
  # users:
  # template:
  # template_border_color:
  # template_text_color:
  })

Certificate.create! ({
  parcel_id: 2,
  name: "papa",
  message: "merci",
  trees_quantity: 1,
  })

Certificate.create! ({
  parcel_id: 2,
  name: "maman",
  message: "merci",
  trees_quantity: 1,
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

puts "Finished!"
