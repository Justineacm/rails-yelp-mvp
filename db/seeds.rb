puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
fivepizza = { name: 'Five Pizza Original', address: '122 Rue Oberkampf, 75011 Paris', category: 'italian' }
justine = { name: 'Justine', address: '96 Rue Oberkampf, 75011 Paris', category: 'french' }
mammaroma = { name: 'Mamma Roma', address: '90 Rue Oberkampf, 75011 Paris', category: 'italian' }
harajuku =  { name: 'Le Petit Harajuku Ramen & Katsu', address: '129 Rue Oberkampf, 75011 Paris', category: 'japanese' }
nakagawa =  { name: 'Nakagawa', address: '142 Rue Oberkampf, 75011 Paris', category: 'japanese' }

[fivepizza, justine, mammaroma, harajuku, nakagawa].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
