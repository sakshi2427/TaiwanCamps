puts "======================"
puts 'Delete Reviews'
Review.destroy_all
puts 'Delete Campsites'
Campsite.destroy_all
puts 'Delete Users'
User.destroy_all
puts "======================"

puts "\n== Seeding the database with seed.rb =="
puts"\n"

puts 'Creating 5 campsites'

Campsite.create!(name: "Longmen Camping Ground", category: "private", address: "No. 100號, Xinglong St, Gongliao District, New Taipei City, Taiwan 228", county: "New Taipei City", postal_code: "228", area: "North", website: "https://www.lonmen.tw", phone: "0225000000")

Campsite.create!(name: "Green Romance Camping", category: "private", address: "311, Taiwan, Hsinchu County, Wufeng Township, 5鄰和平166-15號", county: "Hsinchu County", postal_code: "311", area: "North", website: "https://www.greenromance.tw", phone: "0936309262")

Campsite.create!(name: "Xitou Camping Area", category: "private", address: "558, Taiwan, Nantou County, Lugu Township, 森林巷9號", county: "Nantou County", postal_code: "558", area: "Central", website: "https://www.exfo.ntu.edu.tw", phone: "0493000000")

Campsite.create!(name: "Star Moon Campsite", category: "private", address: "No. 482號之1, Yuemei N Rd, Houli District, Taichung City, Taiwan 421", county: "Taichung", postal_code: "421", area: "Central", website: "https://www.exfo.ntu.edu.tw", phone: "0493000000")

Campsite.create!(name: "面海露營區", category: "private", address: "號, No. 938, Pinge Rd, Hengchun Township, Pingtung County, 946", county: "Pingtung County", postal_code: "946", area: "South", phone: "0915097883")

puts '5 campsites created!'
puts "======================"
puts"\n"

puts 'Creating 6 users'
User.create!(first_name: "John", last_name: "Smith", email: "john@test.com", password: "password")
User.create!(first_name: "Paula", last_name: "Richard", email: "paula@test.com",password: "password")
User.create!(first_name: "Louis", last_name: "Miniot", email: "louis@test.com",password: "password")
User.create!(first_name: "Mathias", last_name: "Gron", email: "mathias@test.com",password: "password")
User.create!(first_name: "Lea", last_name: "Mckeen", email: "lea@test.com",password: "password")
User.create!(first_name: "Claire", last_name: "Lim", email: "claire@test.com",password: "password")
puts '6 users created!'
puts "======================"
puts"\n"

puts 'Creating 3 reviews per campsite'
# first campsite
Review.create!(content: "Very good camp, there are leaders who will take you to experience different aboriginal activities, very attentive", rating: 4, user_id: User.take.id, campsite_id: Campsite.take.id)
Review.create!(content: "the campgrounds were kind of dirty and not well kept.", rating: 2, user_id: User.take.id, campsite_id: Campsite.take.id )
Review.create!(content: "It was solid!", rating: 3, user_id: User.take.id, campsite_id: Campsite.take.id )

# second
Review.create!(content: "Very good camp, there are leaders who will take you to experience different aboriginal activities, very attentive", rating: 4.6, user_id: User.take.id, campsite_id: Campsite.take.id)
Review.create!(content: " The boss is very careful to run this camp, there are many activities and it is suitable for children to go", rating: 3, user_id: User.take.id, campsite_id: Campsite.take.id)
Review.create!(content: "First time here and we enjoyed it! Our dog had a lot of fun.", rating: 5, user_id: User.take.id, campsite_id: Campsite.take.id)

#third
Review.create!(content: "it was not great", rating: 1, user_id: User.take.id, campsite_id: Campsite.take.id)
Review.create!(content: "Solid campgrounds in Upstate New York. Will return!", rating: 4, user_id: User.take.id, campsite_id: Campsite.take.id)
Review.create!(content: "They have kayaks available to rent!! A lot of friendly families camping.", rating: 5, user_id: User.take.id, campsite_id: Campsite.take.id)

#fourth
Review.create!(content: "The best camping we've done!", rating: 4, user_id: User.take.id, campsite_id: Campsite.take.id )
Review.create!(content: "So scenic!", rating: 4, user_id: User.take.id, campsite_id: Campsite.take.id )
Review.create!(content: "It has been on our bucket list and it did not disappoint!", rating: 5, user_id: User.take.id, campsite_id: Campsite.take.id )

#fifth
Review.create!(content: "The best camping we've done!", rating: 4, user_id: User.take.id, campsite_id: Campsite.take.id )
Review.create!(content: "So scenic!", rating: 4, user_id: User.take.id, campsite_id: Campsite.take.id )
Review.create!(content: "It has been on our bucket list and it did not disappoint!", rating: 5, user_id: User.take.id, campsite_id: Campsite.take.id )

puts 'Reviews created!'
puts "======================"
puts"\n"
