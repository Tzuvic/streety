# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Menu.destroy_all
FoodItem.destroy_all
FoodCategory.destroy_all
FoodStall.destroy_all


puts "Creating food category..."
test_food_category = { name: 'tacos', description: 'an often crisply fried tortilla folded over and filled, as with seasoned chopped meat, lettuce, tomatoes, and cheese.'}
first_food_category = FoodCategory.create!(test_food_category)
puts "created #{first_food_category}"

puts "Creating food category 2..."
test_food_category = { name: 'tortas', description: 'nice mexican sandwiches'}
second_food_category = FoodCategory.create!(test_food_category)
puts "created #{second_food_category}"

puts "Creating Food Item..."
test_food_item = { name: 'Al pastor', description: 'Meat off of the giant rotating piece of meat', food_category_id: FoodCategory.first.id, user: User.last }
first_food_item = FoodItem.create!(test_food_item)
puts "created #{first_food_item}"

puts "Creating Food Item..."
test_food_item = { name: 'res', description: 'beef torta', food_category_id: FoodCategory.last.id, user: User.last }
second_food_item = FoodItem.create!(test_food_item)
puts "created #{second_food_item}"


puts "Creating food stall..."
test_food_stall = { name: 'Orinocos', description: "You've got to try this place.  They have the best tacos in a of Mexico City", food_type: 'tacos', schedule: '24/7', vegetarian: false, address: 'Av. Insurgentes Sur 253, 06700 Ciudad de México, CDMX', phone_number: '1231231231', rating: 0, user: User.last, main_category: 'tacos' }
first_food_stall = FoodStall.create!(test_food_stall)

puts "created #{first_food_stall}"


puts "Creating Menu..."
test_food_stall_menu = { food_stall_id: FoodStall.first.id, food_item_id: FoodItem.last.id }
first_food_stall_menu = Menu.create!(test_food_stall_menu)
puts "created #{first_food_stall_menu}"


puts "Creating food stall 2..."
test_food_stall = { name: "Rod's Tacos", description: "You've got to try this place.  They have the best tacos in a of Mexico City", food_type: 'tacos', schedule: '24/7', vegetarian: false, address: 'Jalapa 117, 06700 Ciudad de Mexico, CDMX', phone_number: '1231231231', rating: 0, user: User.last, main_category: 'tacos' }
second_food_stall = FoodStall.create!(test_food_stall)

puts "created #{second_food_stall}"


puts "Creating Menu 2..."
test_food_stall_menu = { food_stall_id: FoodStall.last.id, food_item_id: FoodItem.last.id }
second_food_stall_menu = Menu.create!(test_food_stall_menu)
puts "created #{second_food_stall_menu}"

puts "Creating food stall 3..."
test_food_stall = { name: "Victor's Tacos", description: "You've got to try this place.  They have the best tacos in a of Mexico City", food_type: 'tacos', schedule: '24/7', vegetarian: false, address: 'Av. Azcapotzalco 417, Mexico City', phone_number: '1231231231', rating: 0, user: User.last, main_category: 'tacos' }
third_food_stall = FoodStall.create!(test_food_stall)

puts "created #{third_food_stall}"


puts "Creating Menu 3..."
test_food_stall_menu = { food_stall_id: FoodStall.last.id, food_item_id: FoodItem.last.id }
second_food_stall_menu = Menu.create!(test_food_stall_menu)
puts "created #{second_food_stall_menu}"






# puts "Creating food stall..."
# test_food_stall2 = { name: 'Tizoncitos', description: "You've got to try this place.  They have the best tacos in all of Mexico City", food_type: 'tacos', schedule: '24/7', vegetarian: false, address: '123 Avenida de la reforma', phone_number: '1231231231', rating: 5, user: User.last }

# first_food_stall2 = FoodStall.create!(test_food_stall2)

# puts "created #{first_food_stall2}"

# # puts "Creating food category..."
# # test_food_category2 = { name: 'tacos', description: 'tortilla with toppings inside'}
# # first_food_category2 = FoodCategory.create!(test_food_category)
# # puts "created #{first_food_category2}"

# puts "Creating Food Item..."
# test_food_item2 = { name: 'Campechanos', description: 'Mix of beef and chorizo', food_category_id: FoodCategory.first.id, user: User.last }
# first_food_item2 = FoodItem.create!(test_food_item2)
# puts "created #{first_food_item2}"



# puts "Creating Food Stall Category..."
# test_food_stall_category2 = { name: 'Orinocos', food_stall_id: FoodStall.last.id , food_category_id: FoodCategory.last.id }
# first_food_stall_category2 = FoodStallCategory.create!(test_food_stall_category2)
# puts "created #{first_food_stall_category2}"

