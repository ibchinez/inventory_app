# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

	for x in 1..10 do 
		Delivery.create!(name: "Delivery#{x}" , quantity: '200', weight: '50kg' ,user_id: 20 )	
		 
	end