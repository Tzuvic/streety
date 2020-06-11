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
test_food_category = { name: 'tacos', image_url: 'https://pinchofyum.com/wp-content/uploads/Chicken-Tinga-Tacos-1-2.jpg', description: 'a traditional Mexican dish consisting of a small hand-sized corn or wheat tortilla topped with a filling. The tortilla is then folded around the filling and eaten by hand. A taco can be made with a variety of fillings, including beef, pork, chicken, seafood, vegetables, and cheese, allowing great versatility and variety.'}
first_food_category = FoodCategory.create!(test_food_category)
puts "created #{first_food_category}"

puts "Creating food category 2..."
test_food_category = { name: 'tortas', image_url: 'https://www.naturesyoke.com/wp-content/uploads/2016/10/mexican-torta-e1523296104751.jpg', description: 'a torta is a kind of sandwich served on one of two types of white sandwich rolls. The first is similar to a small baguette, and may be referred to as a bolillo, birote, or pan francés depending on region. The second is a flat, oblong, soft roll called a telera. Tortas can be eaten cold or hot, and grilled or toasted in a press in the same manner as a Cuban sandwich.'}
second_food_category = FoodCategory.create!(test_food_category)
puts "created #{second_food_category}"

puts "Creating Food Item..."
test_food_item = { name: 'Al pastor', image_url: "https://cdn2.cocinadelirante.com/sites/default/files/images/2018/11/tacos-al-pastor-receta.jpg", description: 'Al pastor (from Spanish, "shepherd style"), also known as tacos al pastor, is a taco made with spit-grilled pork. Based on the lamb shawarma brought by Lebanese immigrants to Mexico, al pastor features a flavor palate that combines traditional Middle Eastern spices with those indigenous to central Mexico. It is a popular street food that has spread to the United States. In some places of northern Mexico, as in Baja California, it is known as taco de adobada. A similar dish from Puebla with different spices is tacos árabes.', food_category_id: FoodCategory.first.id, user: User.last }
first_food_item = FoodItem.create!(test_food_item)
puts "created #{first_food_item}"

puts "Creating Food Item..."
test_food_item = { name: 'Campechanos', image_url: "https://eatyourworld.com/images/staff_food_entries/tacos-don-manolito-campechano.jpg", description: "A popular style of street taco, the taco campechano is a can't miss dish in Mexico, unique in the taco world for combining several meats, usually beef and pork, into one delicious package. Typically you will find some grilled beef, chicharron, and longaniza sausage mixed together, to delicious colorful effect. And theres no better place to try it than in Mexico City, where the taco reigns supreme.", food_category_id: FoodCategory.first.id, user: User.last }
first_food_item = FoodItem.create!(test_food_item)
puts "created #{first_food_item}"

puts "Creating Food Item..."
test_food_item = { name: 'ahogada', image_url: "https://corbuse.edu.mx/blog/wp-content/uploads/2019/03/CORBUS%C3%89-3-recetas-de-tortas-ahogadas-una-joya-gastronomica-tapatia.jpg", description: 'A torta ahogada is a typical dish from the Mexican state of Jalisco, particularly in the city of Guadalajara.  Although it is popular in some other parts of Mexico, it is most popular in Guadalajara. It is called "drowned" because the sandwich is submerged totally or partially in a sauce made primarily of a dried chili pepper called chile de árbol. Less spicy versions of the sandwich, made with a tomato-based sauce, are also available.', food_category_id: FoodCategory.last.id, user: User.last }
second_food_item = FoodItem.create!(test_food_item)
puts "created #{second_food_item}"


puts "Creating food stall..."
test_food_stall = { name: 'Orinocos', description: "You've got to try this place.  They have the best tacos in a of Mexico City", food_type: 'tacos', schedule: '24/7', vegetarian: false, address: 'Av. Insurgentes Sur 253, 06700 Ciudad de México, CDMX', phone_number: '1231231231', rating: 0, user: User.last, main_category: 'tacos' }
first_food_stall = FoodStall.create!(test_food_stall)

puts "created #{first_food_stall}"


puts "Creating Menu..."
test_food_stall_menu = { food_stall_id: FoodStall.first.id, food_item_id: FoodItem.first.id }
first_food_stall_menu = Menu.create!(test_food_stall_menu)
puts "created #{first_food_stall_menu}"


puts "Creating food stall 2..."
test_food_stall = { name: "Tacos De La Roma", description: "You've got to try this place.  They have the best tacos in a of Mexico City", food_type: 'tacos', schedule: '24/7', vegetarian: false, address: 'Jalapa 117, 06700 Ciudad de Mexico, CDMX', phone_number: '1231231231', rating: 0, user: User.last, main_category: 'tacos' }
second_food_stall = FoodStall.create!(test_food_stall)

puts "created #{second_food_stall}"


puts "Creating Menu 2..."
test_food_stall_menu = { food_stall_id: FoodStall.second.id, food_item_id: FoodItem.second.id }
second_food_stall_menu = Menu.create!(test_food_stall_menu)
puts "created #{second_food_stall_menu}"

puts "Creating food stall 3..."
test_food_stall = { name: "Super Tortas", description: "You've got to try this place.  They have the best tacos in a of Mexico City", food_type: 'tortas', schedule: '24/7', vegetarian: false, address: 'Av. Azcapotzalco 417, Mexico City', phone_number: '1231231231', rating: 0, user: User.last, main_category: 'tortas' }
third_food_stall = FoodStall.create!(test_food_stall)

puts "created #{third_food_stall}"

puts "Creating Menu 3..."
test_food_stall_menu = { food_stall_id: FoodStall.last.id, food_item_id: FoodItem.last.id }
second_food_stall_menu = Menu.create!(test_food_stall_menu)
puts "created #{second_food_stall_menu}"


# puts "Creating Menu 3..."
# test_food_stall_menu = { food_stall_id: FoodStall.last.id, food_item_id: FoodItem.last.id }
# second_food_stall_menu = Menu.create!(test_food_stall_menu)
# puts "created #{second_food_stall_menu}"






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

