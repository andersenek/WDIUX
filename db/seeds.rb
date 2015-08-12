# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Item.create(name: "UBoom", condition: "Good", quantity: 1, photo_url: "GA_boombox.jpg")
Item.create(name: "IPad", condition: "Good", quantity: 1, photo_url: "GA_ipad.jpg")
Item.create(name: "IPhone 4 Charger", condition: "Good", quantity: 4, photo_url: "GA_iphone4.jpg")
Item.create(name: "IPhone 5/6 Charger", condition: "Good", quantity: 2, photo_url: "GA_iphone5.jpg")
Item.create(name: "MacBook Air", condition: "Good", quantity: 3, photo_url: "GA_laptop.jpg")
Item.create(name: "MacBook Charger", condition: "Good", quantity: 2, photo_url: "GA_laptopcharger.jpg")
Item.create(name: "USB Cord", condition: "Good", quantity: 3, photo_url: "GA_usbcord.jpg")
