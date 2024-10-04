# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts 'cleaning the database'
Review.destroy_all
Favourite.destroy_all
Car.destroy_all
Owner.destroy_all

puts 'Creating owners...'
owner1 = Owner.create!(nickname: 'Dee123')
owner2 = Owner.create!(nickname: 'Lee456')
owner3 = Owner.create!(nickname: 'Jagoda789')

puts 'Finished!'

puts 'Creating cars...'
silver_cloud = Car.new(brand: 'Rolls-Royce', model: 'Silver Cloud', year: 1959, fuel: 'Petrol', owner: owner1, image_url: 'https://ccmarketplace.azureedge.net/cc-temp/listing/97/9296/7305069-1963-rolls-royce-silver-cloud-iii-std.jpg')
silver_cloud.save!

gullwing_300sl  = Car.new(brand: 'Mercedes-Benz', model: '300SL Gullwing', year: 1955, fuel: 'Unleaded', owner: owner2, image_url: 'https://cdn.classic-trader.com/I/images/1920_1920_inset/vehicle_ad_standard_image_0d0c0111dbaf0753705aca3a26ec4d61.jpg')
gullwing_300sl.save!

s1_continental = Car.new(brand: 'Bentley', model: 'S1 Continental', year: 1956, fuel: 'Diesel', owner: owner3, image_url: 'https://www.supercars.net/blog/wp-content/uploads/2016/04/1103446-1536.jpg')
s1_continental.save!

puts "Done #{Owner.count} owners and #{Car.count} cars created"
