# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
FavoriteFoodstall.destroy_all
Recommendation.destroy_all
Menu.destroy_all
FoodItem.destroy_all
FoodCategory.destroy_all
FoodStall.destroy_all



# TACOS

puts "Creating food category..."
test_food_category = { name: 'Tacos', image_url: 'https://pinchofyum.com/wp-content/uploads/Chicken-Tinga-Tacos-1-2.jpg', description: 'a traditional Mexican dish consisting of a small hand-sized corn or wheat tortilla topped with a filling. The tortilla is then folded around the filling and eaten by hand. A taco can be made with a variety of fillings, including beef, pork, chicken, seafood, vegetables, and cheese, allowing great versatility and variety.'}
first_food_category = FoodCategory.create!(test_food_category)
puts "created #{first_food_category}"

puts "Creating Food Item..."
test_food_item = { name: 'Al Pastor', image_url: "https://cdn2.cocinadelirante.com/sites/default/files/images/2018/11/tacos-al-pastor-receta.jpg", description: 'Al pastor (from Spanish, "shepherd style"), also known as tacos al pastor, is a taco made with spit-grilled pork. Based on the lamb shawarma brought by Lebanese immigrants to Mexico, al pastor features a flavor palate that combines traditional Middle Eastern spices with those indigenous to central Mexico. It is a popular street food that has spread to the United States. In some places of northern Mexico, as in Baja California, it is known as taco de adobada. A similar dish from Puebla with different spices is tacos árabes.', food_category_id: FoodCategory.first.id, user: User.last }
al_pastor = FoodItem.create!(test_food_item)
puts "created #{al_pastor}"

puts "Creating Food Item..."
test_food_item = { name: 'Campechanos', image_url: "https://eatyourworld.com/images/staff_food_entries/tacos-don-manolito-campechano.jpg", description: "A popular style of street taco, the taco campechano is a can't miss dish in Mexico, unique in the taco world for combining several meats, usually beef and pork, into one delicious package. Typically you will find some grilled beef, chicharron, and longaniza sausage mixed together, to delicious colorful effect. And theres no better place to try it than in Mexico City, where the taco reigns supreme.", food_category_id: FoodCategory.first.id, user: User.last }
campechanos = FoodItem.create!(test_food_item)
puts "created #{campechanos}"

puts "Creating Food Item..."
test_food_item = { name: 'De Bistec', image_url: "https://i2.wp.com/larecomelona.com/wp-content/uploads/2019/01/img_9902.jpg?w=2160&ssl=1", description: "A back to basics style of street taco, the taco bistec is a can't miss dish in Mexico, containing steak. And theres no better place to try it than in Mexico City, where the taco reigns supreme.", food_category_id: FoodCategory.first.id, user: User.last }
taco_bistec = FoodItem.create!(test_food_item)
puts "created #{taco_bistec}"

puts "Creating Food Item..."
test_food_item = { name: 'De Suadero', image_url: "https://cdn.kiwilimon.com/recetaimagen/13910/th5-640x426-25776.jpg", description: "Suadero is the name of a very thin cut of beef in Argentina, Paraguay and Uruguay, taken from between the skin and the ribs, a sort of flank steak. ", food_category_id: FoodCategory.first.id, user: User.last }
suadero = FoodItem.create!(test_food_item)
puts "created #{suadero}"

# TORTAS

puts "Creating food category 2..."
test_food_category = { name: 'Tortas', image_url: 'https://www.naturesyoke.com/wp-content/uploads/2016/10/mexican-torta-e1523296104751.jpg', description: 'a torta is a kind of sandwich served on one of two types of white sandwich rolls. The first is similar to a small baguette, and may be referred to as a bolillo, birote, or pan francés depending on region. The second is a flat, oblong, soft roll called a telera. Tortas can be eaten cold or hot, and grilled or toasted in a press in the same manner as a Cuban sandwich.'}
second_food_category = FoodCategory.create!(test_food_category)
puts "created #{second_food_category}"

puts "Creating Food Item..."
test_food_item = { name: 'Ahogada', image_url: "https://corbuse.edu.mx/blog/wp-content/uploads/2019/03/CORBUS%C3%89-3-recetas-de-tortas-ahogadas-una-joya-gastronomica-tapatia.jpg", description: 'A torta ahogada is a typical dish from the Mexican state of Jalisco, particularly in the city of Guadalajara.  Although it is popular in some other parts of Mexico, it is most popular in Guadalajara. It is called "drowned" because the sandwich is submerged totally or partially in a sauce made primarily of a dried chili pepper called chile de árbol. Less spicy versions of the sandwich, made with a tomato-based sauce, are also available.', food_category_id: FoodCategory.second.id, user: User.last }
ahogada = FoodItem.create!(test_food_item)
puts "created #{ahogada}"

puts "Creating Food Item..."
test_food_item = { name: 'Bistec', image_url: "https://assets.kraftfoods.com/recipe_images/opendeploy/118961_640x428.jpg", description: 'A torta bistec is a sandwich that contains steak.  Often it is accompanied by salsa, cheese, avocado, and onion', food_category_id: FoodCategory.second.id, user: User.last }
torta_bistec = FoodItem.create!(test_food_item)
puts "created #{torta_bistec}"

puts "Creating Food Item..."
test_food_item = { name: 'De Huevos', image_url: "https://s07.s3c.es/imag/_v0/770x420/2/1/7/torta-de-huevo-770.jpg", description: 'A torta bistec is a sandwich that contains eggs.  Often it is accompanied by salsa, cheese, avocado, and onion', food_category_id: FoodCategory.second.id, user: User.last }
de_huevos = FoodItem.create!(test_food_item)
puts "created #{de_huevos}"

puts "Creating Food Item..."
test_food_item = { name: 'Vikinga', image_url: "https://pbs.twimg.com/media/CLBn5YKUkAAEfyb.jpg", description: "The best from home! Our delicious bread stuff with a bit of everything on the menu (breaded beaf, scramble eggs, sausage, three types of cheese, jam, avocado, tomatoe, onion, mayo and jalapeños)", food_category_id: FoodCategory.second.id, user: User.last }
vikinga = FoodItem.create!(test_food_item)
puts "created #{vikinga}"

# TOSTADAS

puts "Creating food category 3..."
test_food_category = { name: 'Tostadas', image_url: 'https://www.simplyrecipes.com/wp-content/uploads/2009/09/mexican-tostada-horiz-a2-1800.jpg', description: 'A Spanish word meaning "toasted". Tostada usually refers to a flat or bowl-shaped (like a bread bowl) tortilla that is deep fried or toasted. It may also refer to any dish using a tostada as a base. It can be consumed alone, or used as a base for other foods. Corn tortillas are usually used for tostadas, although tostadas made of wheat flour may occasionally be found.
'}
third_food_category = FoodCategory.create!(test_food_category)
puts "created #{third_food_category}"


puts "Creating Food Item..."
test_food_item = { name: 'De Camarón', image_url: "https://dmn-dallas-news-prod.cdn.arcpublishing.com/resizer/iUyG7GEiQpfpVOKLAAWkt_L_1CA=/1660x934/smart/filters:no_upscale()/arc-anglerfish-arc2-prod-dmn.s3.amazonaws.com/public/2NMFEJ5H2IYA5EUZGX2PHQRLWQ.jpg", description: 'A tostada topped with shrimp and often with tomatoes, cucumber, and guacamole.', food_category_id: FoodCategory.third.id, user: User.last }
de_camaron = FoodItem.create!(test_food_item)
puts "created #{de_camaron}"

puts "Creating Food Item..."
test_food_item = { name: 'De Ceviche', image_url: "https://cevicheweb.com/wp-content/uploads/2019/04/20.1-tostadas-de-ceviche.jpg", description: 'A tostada topped with raw fish cured in fresh citrus juices, most commonly lemon or lime, and spiced with ají, chili peppers or other seasonings including chopped onions, salt, and coriander.', food_category_id: FoodCategory.third.id, user: User.last }
de_ceviche = FoodItem.create!(test_food_item)
puts "created #{de_ceviche}"

# HAMBURGUESAS

puts "Creating food category 4..."
test_food_category = { name: 'Hamburguesas', image_url: 'https://i1.wp.com/www.sopitas.com/wp-content/uploads/2019/05/Di%CC%81a-de-la-hamburguesa-promociones.png', description: 'a sandwich consisting of one or more cooked patties of ground meat, usually beef, placed inside a sliced bread roll or bun. The patty may be pan fried, grilled, smoked or flame broiled. Hamburgers are often served with cheese, lettuce, tomato, onion, pickles, bacon, or chiles; condiments such as ketchup, mustard, mayonnaise, relish, or "special sauce"; and are frequently placed on sesame seed buns.'}
fourth_food_category = FoodCategory.create!(test_food_category)
puts "created #{fourth_food_category}"

puts "Creating Food Item..."
test_food_item = { name: 'Sencilla', image_url: "https://cdn2.cocinadelirante.com/sites/default/files/styles/gallerie/public/images/2018/09/receta-super-facil-de-carne-para-hamburguesa-suave.jpg", description: 'A hamburguer with a single slice of meat pattie', food_category_id: FoodCategory.fourth.id, user: User.last }
sencilla = FoodItem.create!(test_food_item)
puts "created #{sencilla}"

puts "Creating Food Item..."
test_food_item = { name: 'Doble', image_url: "https://cheforopeza.com.mx/wp-content/uploads/2019/10/hamburguesa-vegetariana-sitio-940x450.jpg", description: 'A hamburguer with a double slice of meat pattie', food_category_id: FoodCategory.fourth.id, user: User.last }
doble = FoodItem.create!(test_food_item)
puts "created #{doble}"

# AGUA FRESCA

puts "Creating food category 5..."
test_food_category = { name: 'Agua Fresca', image_url: 'https://www.goya.com/media/3229/cold-fruit-drink-aguas-frescas.jpg?quality=80', description: '(Spanish for "cool waters", or literally "fresh waters") are light non-alcoholic beverages made from one or more fruits, cereals, flowers, or seeds blended with sugar and water. They are popular in Mexico, Central America and the United States. Some of the more common flavors include tamarind, hibiscus, and horchata.'}
fifth_food_category = FoodCategory.create!(test_food_category)
puts "created #{fifth_food_category}"

puts "Creating Food Item..."
test_food_item = { name: 'de Tamarindo', image_url: "https://cdn.kiwilimon.com/recetaimagen/28560/28815.jpg", description: 'Agua de tamarindo or "tamarind water" is one of the most common and well-loved aguas frescas in all of Mexico. The earthy sweet and sour flavor—with its definitely bracing acidic note—is most welcome on a hot day.', food_category_id: FoodCategory.fifth.id, user: User.last }
tamarind = FoodItem.create!(test_food_item)
puts "created #{tamarind}"

puts "Creating Food Item..."
test_food_item = { name: "de Horchata", image_url: "https://cdn.kiwilimon.com/recetaimagen/31780/th5-640x426-36562.jpg", description: 'In Mexico, horchata water is a classic, made from rice with a touch of cinnamon and milk. You will find several versions that many prepare with mixing evaporated and condensed milk. Here we give you an easy and rich recipe.', food_category_id: FoodCategory.fifth.id, user: User.last }
horchata = FoodItem.create!(test_food_item)
puts "created #{horchata}"

# QUESADILLA

puts "Creating food category 6..."
test_food_category = { name: 'Quesadillas', image_url: 'https://foodandtravel.mx/wp-content/uploads/2017/06/Baked-Chicken-Quesadillas-10.jpg', description: 'A Mexican dish and type of taco, consisting of a tortilla that is filled primarily with cheese, and sometimes meats, beans, and spices, and then cooked on a griddle. Traditionally, a corn tortilla is used, but it can also be made with a flour tortilla, particularly in northern Mexico and the United States.'}
sixth_food_category = FoodCategory.create!(test_food_category)
puts "created #{sixth_food_category}"

puts "Creating Food Item..."
test_food_item = { name: 'De Chicharron', image_url: "https://i.pinimg.com/originals/15/fd/f4/15fdf4d6a84c42a3950cd3689a72f92b.jpg", description: 'Chicharron is a dish generally consisting of fried pork belly or fried pork rinds. Chicharron may also be made from chicken, mutton or beef.', food_category_id: sixth_food_category.id, user: User.last }
quesadilla_chicharron = FoodItem.create!(test_food_item)
puts "created #{quesadilla_chicharron}"

puts "Creating Food Item..."
test_food_item = { name: "De Bistec", image_url: "https://lh3.googleusercontent.com/proxy/GxCKQ77t4p7WtZeVJwfyacjgCy650bba5sBPWt39FjhKqmF_N8sMS3BjpbMWyTPp9bnXuxGWyAaYMlo5-RJCIsnD81PVvZSSt96FhiapGJUAGWzZBOHkM54oo8ACrOI93m_3A60", description: 'A torta bistec is a sandwich that contains steak.  Often it is accompanied by salsa, cheese, avocado, and onion', food_category_id: sixth_food_category.id, user: User.last }
quesadilla_bistec = FoodItem.create!(test_food_item)
puts "created #{horchata}"

# FOOD STALLS

puts "Creating food stall..."
test_food_stall = { name: 'Orinocos', description: "You've got to try this place.  They have the best tacos in a of Mexico City", food_type: 'tacos', schedule: '24/7', vegetarian: false, address: 'Av. Insurgentes Sur 253, 06700 Ciudad de México, CDMX', phone_number: '1231231231', rating: 0, user: User.last, main_category: 'tacos' }
first_food_stall = FoodStall.create!(test_food_stall)

puts "created #{first_food_stall}"


puts "Creating Menu..."
test_food_stall_menu = { food_stall_id: FoodStall.first.id, food_item_id: al_pastor.id }
first_food_stall_menu = Menu.create!(test_food_stall_menu)
puts "created #{first_food_stall_menu}"

puts "Creating Menu..."
test_food_stall_menu = { food_stall_id: FoodStall.first.id, food_item_id: campechanos.id }
first_food_stall_menu = Menu.create!(test_food_stall_menu)
puts "created #{first_food_stall_menu}"

puts "Creating Menu..."
test_food_stall_menu = { food_stall_id: FoodStall.first.id, food_item_id: suadero.id }
first_food_stall_menu = Menu.create!(test_food_stall_menu)
puts "created #{first_food_stall_menu}"

puts "Creating Menu..."
test_food_stall_menu = { food_stall_id: FoodStall.first.id, food_item_id: taco_bistec.id }
first_food_stall_menu = Menu.create!(test_food_stall_menu)
puts "created #{first_food_stall_menu}"

puts "Creating Menu..."
test_food_stall_menu = { food_stall_id: FoodStall.first.id, food_item_id: tamarind.id }
first_food_stall_menu = Menu.create!(test_food_stall_menu)
puts "created #{first_food_stall_menu}"

puts "Creating Menu..."
test_food_stall_menu = { food_stall_id: FoodStall.first.id, food_item_id: horchata.id }
first_food_stall_menu = Menu.create!(test_food_stall_menu)
puts "created #{first_food_stall_menu}"

###############################################

puts "Creating food stall 2..."
test_food_stall = { name: "Tacos De La Roma", description: "You've got to try this place.  They have the best tacos in a of Mexico City", food_type: 'tacos', schedule: '24/7', vegetarian: false, address: 'Jalapa 117, 06700 Ciudad de Mexico, CDMX', phone_number: '1231231231', rating: 0, user: User.last, main_category: 'tacos' }
second_food_stall = FoodStall.create!(test_food_stall)

puts "created #{second_food_stall}"


puts "Creating Menu 2..."
test_food_stall_menu = { food_stall_id: FoodStall.second.id, food_item_id: campechanos.id }
second_food_stall_menu = Menu.create!(test_food_stall_menu)
puts "created #{second_food_stall_menu}"

puts "Creating Menu 2..."
test_food_stall_menu = { food_stall_id: FoodStall.second.id, food_item_id: suadero.id }
second_food_stall_menu = Menu.create!(test_food_stall_menu)
puts "created #{second_food_stall_menu}"

puts "Creating Menu 2..."
test_food_stall_menu = { food_stall_id: FoodStall.second.id, food_item_id: taco_bistec.id }
second_food_stall_menu = Menu.create!(test_food_stall_menu)
puts "created #{second_food_stall_menu}"

puts "Creating Menu 2..."
test_food_stall_menu = { food_stall_id: FoodStall.second.id, food_item_id: al_pastor.id }
second_food_stall_menu = Menu.create!(test_food_stall_menu)
puts "created #{second_food_stall_menu}"

###############################################

puts "Creating food stall 3..."
test_food_stall = { name: "Seb's Tacos", description: "You've got to try this place.  They have the best tacos in a of Mexico City", food_type: 'tacos', schedule: '24/7', vegetarian: false, address: 'Av. Clavería 157, 02080, Ciudad de Mexico, CDMX', phone_number: '1231231231', rating: 0, user: User.last, main_category: 'tacos' }
third_food_stall = FoodStall.create!(test_food_stall)

puts "created #{third_food_stall}"

puts "Creating Menu 3..."
test_food_stall_menu = { food_stall_id: FoodStall.third.id, food_item_id: taco_bistec.id }
second_food_stall_menu = Menu.create!(test_food_stall_menu)
puts "created #{second_food_stall_menu}"

puts "Creating Menu 3..."
test_food_stall_menu = { food_stall_id: FoodStall.third.id, food_item_id: suadero.id }
second_food_stall_menu = Menu.create!(test_food_stall_menu)
puts "created #{second_food_stall_menu}"

puts "Creating Menu 3..."
test_food_stall_menu = { food_stall_id: FoodStall.third.id, food_item_id: campechanos.id }
second_food_stall_menu = Menu.create!(test_food_stall_menu)
puts "created #{second_food_stall_menu}"

puts "Creating Menu 3..."
test_food_stall_menu = { food_stall_id: FoodStall.third.id, food_item_id: tamarind.id }
second_food_stall_menu = Menu.create!(test_food_stall_menu)
puts "created #{second_food_stall_menu}"

puts "Creating Menu 3..."
test_food_stall_menu = { food_stall_id: FoodStall.third.id, food_item_id: horchata.id }
second_food_stall_menu = Menu.create!(test_food_stall_menu)
puts "created #{second_food_stall_menu}"

puts "Creating Menu 3..."
test_food_stall_menu = { food_stall_id: FoodStall.third.id, food_item_id: al_pastor.id }
second_food_stall_menu = Menu.create!(test_food_stall_menu)
puts "created #{second_food_stall_menu}"

puts "Creating Menu 3..."
test_food_stall_menu = { food_stall_id: FoodStall.third.id, food_item_id: quesadilla_chicharron.id }
second_food_stall_menu = Menu.create!(test_food_stall_menu)
puts "created #{second_food_stall_menu}"

puts "Creating Menu 3..."
test_food_stall_menu = { food_stall_id: FoodStall.third.id, food_item_id: quesadilla_bistec.id }
second_food_stall_menu = Menu.create!(test_food_stall_menu)
puts "created #{second_food_stall_menu}"

###############################################

puts "Creating food stall 4..."
test_food_stall = { name: "Super Tortas", description: "You've got to try this place.  They have the best tacos in a of Mexico City", food_type: 'tortas', schedule: '24/7', vegetarian: false, address: 'Av. Azcapotzalco 417, Mexico City', phone_number: '1231231231', rating: 0, user: User.last, main_category: 'tortas' }
fourth_food_stall = FoodStall.create!(test_food_stall)

puts "created #{fourth_food_stall}"

puts "Creating Menu 4..."
test_food_stall_menu = { food_stall_id: FoodStall.fourth.id, food_item_id: ahogada.id }
fourth_food_stall_menu = Menu.create!(test_food_stall_menu)
puts "created #{fourth_food_stall_menu}"

puts "Creating Menu 4..."
test_food_stall_menu = { food_stall_id: FoodStall.fourth.id, food_item_id: torta_bistec.id }
fourth_food_stall_menu = Menu.create!(test_food_stall_menu)
puts "created #{fourth_food_stall_menu}"

puts "Creating Menu 4..."
test_food_stall_menu = { food_stall_id: FoodStall.fourth.id, food_item_id: de_huevos.id }
fourth_food_stall_menu = Menu.create!(test_food_stall_menu)
puts "created #{fourth_food_stall_menu}"

puts "Creating Menu 4..."
test_food_stall_menu = { food_stall_id: FoodStall.fourth.id, food_item_id: vikinga.id }
fourth_food_stall_menu = Menu.create!(test_food_stall_menu)
puts "created #{fourth_food_stall_menu}"

puts "Creating Menu 4..."
test_food_stall_menu = { food_stall_id: FoodStall.fourth.id, food_item_id: tamarind.id }
fourth_food_stall_menu = Menu.create!(test_food_stall_menu)
puts "created #{fourth_food_stall_menu}"

puts "Creating Menu 4..."
test_food_stall_menu = { food_stall_id: FoodStall.fourth.id, food_item_id: horchata.id }
fourth_food_stall_menu = Menu.create!(test_food_stall_menu)
puts "created #{fourth_food_stall_menu}"

###############################################

puts "Creating food stall 5..."
test_food_stall = { name: "Incredible Tortas", description: "You've got to try this place.  They have the best tacos in a of Mexico City", food_type: 'tortas', schedule: '24/7', vegetarian: false, address: 'Av. Claveria 2, 02080 Ciudad de México, CDMX', phone_number: '1231231231', rating: 0, user: User.last, main_category: 'tortas' }
fifth_food_stall = FoodStall.create!(test_food_stall)

puts "created #{fifth_food_stall}"

puts "Creating Menu 5..."
test_food_stall_menu = { food_stall_id: FoodStall.fifth.id, food_item_id: torta_bistec.id }
fifth_food_stall_menu = Menu.create!(test_food_stall_menu)
puts "created #{fifth_food_stall_menu}"

puts "Creating Menu 5..."
test_food_stall_menu = { food_stall_id: FoodStall.fifth.id, food_item_id: ahogada.id }
fifth_food_stall_menu = Menu.create!(test_food_stall_menu)
puts "created #{fifth_food_stall_menu}"

puts "Creating Menu 5..."
test_food_stall_menu = { food_stall_id: FoodStall.fifth.id, food_item_id: vikinga.id }
fifth_food_stall_menu = Menu.create!(test_food_stall_menu)
puts "created #{fifth_food_stall_menu}"

puts "Creating Menu 5..."
test_food_stall_menu = { food_stall_id: FoodStall.fifth.id, food_item_id: de_huevos.id }
fifth_food_stall_menu = Menu.create!(test_food_stall_menu)
puts "created #{fifth_food_stall_menu}"

puts "Creating Menu 5..."
test_food_stall_menu = { food_stall_id: FoodStall.fifth.id, food_item_id: tamarind.id }
fifth_food_stall_menu = Menu.create!(test_food_stall_menu)
puts "created #{fifth_food_stall_menu}"

puts "Creating Menu 5..."
test_food_stall_menu = { food_stall_id: FoodStall.fifth.id, food_item_id: horchata.id }
fifth_food_stall_menu = Menu.create!(test_food_stall_menu)
puts "created #{fifth_food_stall_menu}"

###############################################


puts "Creating food stall 6..."
test_food_stall = { name: "Hamburguesas Al Carbón", description: "You've got to try this place.  They have the best tacos in a of Mexico City", food_type: 'hamburguesas', schedule: '24/7', vegetarian: false, address: 'Av. Claveria 2, 02080 Ciudad de México, CDMX', phone_number: '1231231231', rating: 0, user: User.last, main_category: 'hamburguesas' }
sixth_food_stall = FoodStall.create!(test_food_stall)

puts "created #{sixth_food_stall}"

puts "Creating Menu 6..."
test_food_stall_menu = { food_stall_id: sixth_food_stall.id, food_item_id: sencilla.id }
sixth_food_stall_menu = Menu.create!(test_food_stall_menu)
puts "created #{sixth_food_stall_menu}"

puts "Creating Menu 6..."
test_food_stall_menu = { food_stall_id: sixth_food_stall.id, food_item_id: doble.id }
sixth_food_stall_menu = Menu.create!(test_food_stall_menu)
puts "created #{sixth_food_stall_menu}"

puts "Creating Menu 6..."
test_food_stall_menu = { food_stall_id: sixth_food_stall.id, food_item_id: tamarind.id }
sixth_food_stall_menu = Menu.create!(test_food_stall_menu)
puts "created #{sixth_food_stall_menu}"

puts "Creating Menu 6..."
test_food_stall_menu = { food_stall_id: sixth_food_stall.id, food_item_id: horchata.id }
sixth_food_stall_menu = Menu.create!(test_food_stall_menu)
puts "created #{sixth_food_stall_menu}"

###############################################

puts "Creating food stall 7..."
test_food_stall = { name: "La Burguesa", description: "You've got to try this place.  They have the best tacos in a of Mexico City", food_type: 'hamburguesas', schedule: '24/7', vegetarian: false, address: 'Cozumel 67B, 06700 Ciudad de México, CDMX', phone_number: '1231231231', rating: 0, user: User.last, main_category: 'hamburguesas' }
seventh_food_stall = FoodStall.create!(test_food_stall)

puts "created #{seventh_food_stall}"

puts "Creating Menu 7..."
test_food_stall_menu = { food_stall_id: seventh_food_stall.id, food_item_id: sencilla.id }
seventh_food_stall_menu = Menu.create!(test_food_stall_menu)
puts "created #{seventh_food_stall_menu}"

puts "Creating Menu 7b..."
test_food_stall_menu = { food_stall_id: seventh_food_stall.id, food_item_id: doble.id }
seventh_food_stall_menu = Menu.create!(test_food_stall_menu)
puts "created #{seventh_food_stall_menu}"

puts "Creating Menu 7..."
test_food_stall_menu = { food_stall_id: seventh_food_stall.id, food_item_id: horchata.id }
seventh_food_stall_menu = Menu.create!(test_food_stall_menu)
puts "created #{seventh_food_stall_menu}"

puts "Creating Menu 7b..."
test_food_stall_menu = { food_stall_id: seventh_food_stall.id, food_item_id: tamarind.id }
seventh_food_stall_menu = Menu.create!(test_food_stall_menu)
puts "created #{seventh_food_stall_menu}"

###############################################


puts "Creating food stall 8..."
test_food_stall = { name: "Tostadas De Juan", description: "You've got to try this place.  They have the best tacos in a of Mexico City", food_type: 'tostadas', schedule: '24/7', vegetarian: false, address: 'Av. Morelos 88, 02020 Ciudad de México, CDMX', phone_number: '1231231231', rating: 0, user: User.last, main_category: 'tostadas' }
eigth_food_stall = FoodStall.create!(test_food_stall)

puts "created #{eigth_food_stall}"

puts "Creating Menu 8..."
test_food_stall_menu = { food_stall_id: eigth_food_stall.id, food_item_id: de_camaron.id }
eigth_food_stall_menu = Menu.create!(test_food_stall_menu)
puts "created #{eigth_food_stall_menu}"

puts "Creating Menu 8b..."
test_food_stall_menu = { food_stall_id: eigth_food_stall.id, food_item_id: de_ceviche.id }
eigth_food_stall_menu = Menu.create!(test_food_stall_menu)
puts "created #{eigth_food_stall_menu}"

puts "Creating Menu 8..."
test_food_stall_menu = { food_stall_id: eigth_food_stall.id, food_item_id: horchata.id }
eigth_food_stall_menu = Menu.create!(test_food_stall_menu)
puts "created #{eigth_food_stall_menu}"

puts "Creating Menu 8b..."
test_food_stall_menu = { food_stall_id: eigth_food_stall.id, food_item_id: tamarind.id }
eigth_food_stall_menu = Menu.create!(test_food_stall_menu)
puts "created #{eigth_food_stall_menu}"



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

