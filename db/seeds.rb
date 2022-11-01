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

Campsite.create!(name: "Longmen Camping Ground", type: "private", address: "No. 100號, Xinglong St, Gongliao District, New Taipei City, Taiwan 228", county: "New Taipei City", postal_code: "228", area: "North", website: "https://www.lonmen.tw", phone: "0225000000")

Campsite.create!(name: "Green Romance Camping", type: "private", address: "311, Taiwan, Hsinchu County, Wufeng Township, 5鄰和平166-15號", county: "Hsinchu County", postal_code: "311", area: "North", website: "https://www.greenromance.tw", phone: "0936309262")

Campsite.create!(name: "Xitou Camping Area", type: "private", address: "558, Taiwan, Nantou County, Lugu Township, 森林巷9號", county: "Nantou County", postal_code: "558", area: "Central", website: "https://www.exfo.ntu.edu.tw", phone: "0493000000")

Campsite.create!(name: "Star Moon Campsite", type: "private", address: "No. 482號之1, Yuemei N Rd, Houli District, Taichung City, Taiwan 421", county: "Taichung", postal_code: "421", area: "Central", website: "https://www.exfo.ntu.edu.tw", phone: "0493000000")

Campsite.create!(name: "面海露營區", type: "private", address: "號, No. 938, Pinge Rd, Hengchun Township, Pingtung County, 946", county: "Pingtung County", postal_code: "946", area: "South", phone: "0915097883")

puts '5 campsites created!'
puts "======================"
puts"\n"

puts 'Creating 6 users'
User.create!(first_name: "John", last_name: "Smith", password: "password")
User.create!(first_name: "Paula", last_name: "Richard", password: "password")
User.create!(first_name: "Louis", last_name: "Miniot", password: "password")
User.create!(first_name: "Mathias", last_name: "Gron", password: "password")
User.create!(first_name: "Lea", last_name: "Mckeen", password: "password")
User.create!(first_name: "Claire", last_name: "Lim", password: "password")
puts '6 users created!'
puts "======================"
puts"\n"

puts 'Creating 3 reviews per campsite'
# first campsite
Review.create!(review: "Very good camp, there are leaders who will take you to experience different aboriginal activities, very attentive", rating: 4.6, user_id: 1, campsite_id: 1 )
Review.create!(review: "the campgrounds were kind of dirty and not well kept.", rating: 2, user_id: 3, campsite_id: 1 )
Review.create!(review: "It was solid!", rating: 3, user_id: 6, campsite_id: 1 )

# second
Review.create(review: "Very good camp, there are leaders who will take you to experience different aboriginal activities, very attentive", rating: 4.6, user_id: 2, campsite_id: 2)
Review.create(review: " The boss is very careful to run this camp, there are many activities and it is suitable for children to go", rating: 3, user_id: 5, campsite_id: 2)
Review.create(review: "First time here and we enjoyed it! Our dog had a lot of fun.", rating: 5, user_id: 6, campsite_id: 2)

#third
Review.create(review: "it was not great", rating: 1, user_id: 5, campsite_id: 3)
Review.create(review: "Solid campgrounds in Upstate New York. Will return!", rating: 4, user_id: 4, campsite_id: 3)
Review.create(review: "They have kayaks available to rent!! A lot of friendly families camping.", rating: 5, user_id: 3, campsite_id: 3)

#fourth
Review.create(review: "The best camping we've done!", rating: 4, user_id: 4, campsite_id: 4 )
Review.create(review: "So scenic!", rating: 4, user_id: 1, campsite_id: 4 )
Review.create(review: "It has been on our bucket list and it did not disappoint!", rating: 5, user_id: 2, campsite_id: 4 )

#fifth
Review.create(review: "The best camping we've done!", rating: 4, user_id: 4, campsite_id: 4 )
Review.create(review: "So scenic!", rating: 4, user_id: 1, campsite_id: 4 )
Review.create(review: "It has been on our bucket list and it did not disappoint!", rating: 5, user_id: 2, campsite_id: 4 )

puts 'Reviews created!'
puts "======================"
puts"\n"
