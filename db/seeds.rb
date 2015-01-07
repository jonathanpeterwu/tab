# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


p "COOL **********************"
items = Item.create([{title: "beer", description: "7% alcoholic drink", price: 7.99}, {title: "vodka", description: "14% alcoholic drink", price: 14.99}, {title: "champagne", description: "10% alcoholic drink", price: 19.99}])
p items
users = User.create([{name: "jimmy", birthday: 1271991, facebook_id: 1, rating: 4.9, image: "test.jpg"},{image: "test.jpg", name: "pico", birthday: 1271984, facebook_id: 2, rating: 4.8},{image: "test.jpg", name: "katie", birthday: 1271988, facebook_id: 3, rating: 5.0}])
p users
vendors = Vendor.create([{name: "rosewood", address: "1234 chase st, palo alto, ca 94101", rating: 4.9}, {name: "lakewood", address: "1234 california st, san francisco, ca, 94109", rating: 5.0}])
p vendors
tabs = Tab.create([{total: 100.9, date_of_purchase: 11272014, user_id: 1, vendor_id: 1, item_list: "beer, wine, sweet, test", paid: true }, {total:  950, date_of_purchase: 12252014, user_id: 2, vendor_id: 1, item_list: "beer, prosecco, champagne" , paid: false}])
p tabs