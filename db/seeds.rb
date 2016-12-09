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

carole = User.create!({
  email: "Carole@conscients.com",
  password: "Carole"
  })

alain = User.create!({
  email: "alain.crawford@gmail.com",
  password: "Alain15"
  })

puts "Creating parcels..."

parcel_camizan = Parcel.create!({
  unique_number: "AH-PE-12345",
  latitude: -7.12839,
  longitude: -76.70769,
  farmer_name: "Juan Bautista Palacios Camizan",
  tree_quantity: 100,
  tree_quantity_remaining: 100,
  tree_species: "Capirona"
  })

parcel_severa = Parcel.create!({
  unique_number: "1-5_NJAE-2511",
  latitude: -7.599353,
  longitude: -76.675140,
  farmer_name: "William Homero Villanueva Severa",
  tree_quantity: 100,
  tree_quantity_remaining: 0,
  tree_species: "Capirona"
  })

puts "Creating certificates..."

Certificate.create! ({
  # unique_number: 
  parcel: parcel_camizan,
  name: "maman",
  message: "je t'aime énormément",
  date: Date.new(2016, 12, 25),
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
  parcel: parcel_camizan,
  name: "Boris",
  message: "bon anniversaire le Wagon",
  date: Date.new(2016, 12, 25),
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
  parcel: parcel_camizan,
  name: "Gabriel",
  message: "Merci pour tout ce JS",
  date: Date.new(2016, 12, 25), 
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
  parcel: parcel_camizan,
  name: "François",
  message: "Merci pour ce moment",
  date: Date.new(2016, 12, 25), 
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
  parcel: parcel_camizan,
  name: "Pierre",
  message: "J'espère que tu reviendras bientôt",
  date: Date.new(2016, 12, 25), 
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
  parcel: parcel_camizan,
  name: "maman",
  message: "Tu es mon coeur",
  date: Date.new(2016, 12, 25), 
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
  parcel: parcel_camizan,
  name: "maman",
  message: "je t'aime énormément",
  date: Date.new(2016, 12, 25), 
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
  parcel: parcel_camizan,
  name: "papa",
  message: "je t'aime infiniment",
  date: Date.new(2016, 12, 25), 
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
  parcel: parcel_camizan,
  name: "papa",
  message: "Tu es mon héros",
  date: Date.new(2016, 12, 25),
  trees_quantity: 1
  })

Certificate.create! ({
  parcel: parcel_camizan,
  name: "Maman",
  message: "merci pour tout",
  date: Date.new(2016, 12, 25),
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
  parcel: parcel_camizan,
  name: "Jean",
  message: "rien ne nous arrêtera",
  date: Date.new(2016, 12, 25),
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
