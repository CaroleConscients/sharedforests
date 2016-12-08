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

puts "Creating users..."

User.create!({
  email: "Carole@conscients.com",
  password: "Carole"
  })

User.create!({
  email: "alain.crawford@gmail.com",
  password: "Alain15"
  })

puts "Creating parcels..."

Parcel.create!({
  unique_number: "AH-PE-12345",
  latitude: -7.12839,
  longitude: -76.70769,
  farmer_name: "Juan Bautista Palacios Camizan",
  tree_quantity: 100,
  tree_quantity_remaining: 100,
  tree_species: "Capirona"
  })

Parcel.create!({
  unique_number: "1-5_NJAE-2511",
  latitude: -7.599353,
  longitude: -76.675140,
  farmer_name: "William Homero Villanueva Severa",
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
  name: "Boris",
  message: "bon anniversaire le Wagon",
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
  name: "Gabriel",
  message: "Merci pour tout ce JS",
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
  name: "François",
  message: "Merci pour ce moment",
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
  name: "Pierre",
  message: "J'espère que tu reviendras bientôt",
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
  name: "maman",
  message: "Tu es mon coeur",
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
  parcel_id: 2,
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
  parcel_id: 2,
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
  message: "Tu es mon héros",
  trees_quantity: 1,
  })

Certificate.create! ({
  parcel_id: 2,
  name: "Maman",
  message: "merci pour tout",
  trees_quantity: 2
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

Certificate.create! ({
  parcel_id: 2,
  name: "Jean",
  message: "rien ne nous arrêtera",
  trees_quantity: 2
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
