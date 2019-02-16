
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

100.times do 
	Item.create([{
		name:Faker::Food.dish,
		price:Faker::Number.positive(5, 30),
		category_id:Faker::Number.positive(1, 10),
		image_id:Faker::Number.positive(1, 20),
		short_description:Faker::Lorem.words(rand(2..5)).join(' '),
		long_description:Faker::Lorem.words(rand(2..10)).join(' '),
		is_active:Faker::Boolean.boolean,
		preparation_time:Faker::Number.positive(10, 90),
		serves:Faker::Number.between(1, 3),
		calorie_count:Faker::Number.between(20, 500),
		meal_type_id:Faker::Number.positive(1, 4),
		cuisine_id:Faker::Number.positive(1, 10),
		spicy_level:Faker::Number.between(1, 3),
		is_new:Faker::Boolean.boolean,
		is_bestseller:Faker::Boolean.boolean
    }])
end



10.times do
	Category.create([{  
		name:Faker::Food.dish,
		description:Faker::Food.description,
		image_id:Faker::Number.positive(1, 20),
		is_active:Faker::Boolean.boolean
	}])
end



100.times do 
	Address.create([{
		address1:Faker::Address.full_address,
		address2:Faker::Address.full_address,
		landmark:Faker::Address.street_name,
		city:Faker::Address.city,
		state:Faker::Address.state,
		country:Faker::Address.country,
		zipcode:Faker::Address.zip_code, 
		latitude:Faker::Address.latitude,
		longitude:Faker::Address.longitude
	}])
end



5.times do 
	Branch.create([{
		email:Faker::Internet.email,
		phone:Faker::Number.number(10),
		address_id:Faker::Number.positive(1, 20),
		manager_id:Faker::Number.positive(1, 10),
		is_disabled:Faker::Boolean.boolean,
		is_inactive:Faker::Boolean.boolean
	}])
end

