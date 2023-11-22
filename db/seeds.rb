# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
Restaurant.destroy_all
dishoom = { name: 'Dishoom', address: '7 Boundary Street, London E2 7JE', phone_number: '007', category: 'chinese' }
new_xian = { name: 'New Xian', address: 'Morningside, Edinburgh', phone_number: '001', category: 'chinese' }
cafe_andeluz = { name: 'Cafe Andeluz', address: 'George Street, Edinburgh', phone_number: '003', category: 'belgian' }
delivino = { name: 'Delivino', address: 'King street, Crieff', phone_number: '002', category: 'italian' }
petit_paris = { name: 'Petit Paris', address: 'GrassMarket, Edinburgh', phone_number: '004', category: 'french' }

[dishoom, new_xian, cafe_andeluz, delivino, petit_paris].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
#   end
