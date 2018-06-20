# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

	for x in 1..10 do 
		Supply.create!(name: "Supply#{x}" , quantity: '200', weight: '50kg',amount: '#200', user_id: 18 )	
	end