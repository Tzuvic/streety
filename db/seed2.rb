puts "Creating Food Item..."
test_food_item = { name: 'burito', image_url: "https://pbs.twimg.com/media/CLBn5YKUkAAEfyb.jpg", description: "The best from home! Our delicious bread stuff with a bit of everything on the menu (breaded beaf, scramble eggs, sausage, three types of cheese, jam, avocado, tomatoe, onion, mayo and jalapeños)", food_category_id: FoodCategory.last.id, user: User.last }
first_food_item = FoodItem.create!(test_food_item)
puts "created #{first_food_item}"
