# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Create User for Testing
user1 = User.create!(email: "test1@test.com", password: "123456")


# Create tags
tag1 = Tag.create!(name: "Asian")
tag2 = Tag.create!(name: "Mexican")
tag3 = Tag.create!(name: "British")

# Create recipes
recipe1 = Recipe.create!(name: "Dumplings", description: "", instructions: "", prep_time: 30, cook_time: 120, user_id: 1)
recipe2 = Recipe.create!(name: "Tacos", description: "", instructions: "", prep_time: 30, cook_time: 120, user_id: 1)
recipe3 = Recipe.create!(name: "Steak and ale pie", description: "", instructions: "", prep_time: 30, cook_time: 120, user_id: 1)
recipe4 = Recipe.create!(name: "Noodles", description: "", instructions: "", prep_time: 30, cook_time: 120, user_id: 1)
recipe5 = Recipe.create!(name: "Fajitas", description: "", instructions: "", prep_time: 30, cook_time: 120, user_id: 1)
recipe6 = Recipe.create!(name: "Fish and chips", description: "", instructions: "", prep_time: 30, cook_time: 120, user_id: 1)

# Associate tags with recipes through the join table
recipe1.tags << tag1
recipe2.tags << tag2
recipe3.tags << tag3
recipe4.tags << tag1
recipe5.tags << tag2  # Example of associating multiple tags with one recipe
recipe6.tags << tag3

puts "Recipes and tags created"




ingredients = ["HUMMUS",
               "MILK",
               "Beef",
               "TOMATOES",
               "SALT",
               "BEANS",
               "Beans snap canned drained",
               "Broccoli",
               "HOT DOGS",
               "Hot dogs beef",
               "Frankfurter",
               "ALMONDS",
               "Almonds dry roasted salted",
               "Nuts",
               "CHEESE",
               "Ricotta cheese whole milk",
               "Ricotta cheese",
               "KALE",
               "EGG",
               "Whole eggs",
               "Egg whites",
               "Egg whites dried",
               "SALSA",
               "BEEF BREAKFAST SAUSAGE",
               "Sausage",
               "Onion rings",
               "SOUTHERN MEATS",
               "Pickles",
               "Peanut butter",
               "Parmesan cheese",
               "American cheese",
               "GRAPEFRUIT JUICE",
               "Peaches",
               "SUNFLOWER SEEDS",
               "Sunflower seeds dry roasted salted",
               "ITALIAN PORK SAUSAGE",
               "White bread",
               "Bread",
               "TURKEY BREAKFAST SAUSAGE",
               "Swiss Cheese Slices",
               "Carrots",
               "Mustard",
               "Figs",
               "Mission Figs",
               "Kiwi",
               "Kiwifruit",
               "Cantaloupe",
               "Melons",
               "Nectarines",
               "Fresh Nectarines",
               "Oranges",
               "Orange",
               "Strawberries",
               "Fresh Strawberries",
               "Lettuce",
               "Romaine Lettuce",
               "Cheddar cheese",
               "Cottage cheese",
               "Mozzarella",
               "Egg yolk",
               "Dry white cheese",
               "Greek yogurt",
               "Yogurt",
               "Oil",
               "Ground turkey",
               "Turkey",
               "Chicken",
               "Fat",
               "Chicken breast",
               "HAM",
               "Pears",
               "Bartlett Pears",
               "Green Anjou Pears",
               "OLIVES",
               "Olives green stuffed with pimentos",
               "CHORIZO PORK SAUSAGE",
               "OATMEAL COOKIES WITH RAISINS",
               "Cookies",
               "Haddock",
               "Fish",
               "Tuna",
               "Tuna; chunk light; canned in water; drained solids",
               "Sugar",
               "Granulated Sugar",
               "Castor Sugar",
               "Brown Sugar",
               "Demerara Sugar",
               "Kroger Sugar",
               "Whole wheat bread",
               "Ham ",
               "Ketchup ",
               "CANOLA OIL",
               "Corn oil",
               "VEGETABLE OIL (100% SOYBEAN OIL)",
               "Soybean oil",
               "OLIVE OIL",
               "OLIVE OIL CONTROL COMPOSITE",
               "Bacon",
               "Bacon; cooked",
               "PANERA BACON TURKEY BRAVO",
               "Pork",
               "BUTTER",
               "FLOUR",
               "ONIONS",
               "BANANAS",
               "GARLIC",
               "APPLES",
               "Soy milk",
               "Almond milk",
               "Mushroom",
               "Mushrooms",
               "Spinach",
               "Tomato",
               "Apple juice",
               "Orange juice",
               "Grape juice",
               "Cranberry juice",
               "Tomato juice",
               "APPLE JUICE FROM CONCENTRATE WITH ADDED VITAMIN C",
               "Oat milk",
               "Peppers",
               "Buttermilk",
               "Sesame butter",
               "Almond butter",
               "Flaxseed",
               "sesame seed butter (tahini)",
               "ground flaxseed meal",
               "Raspberries",
               "Blueberries",
               "Grapes",
               "Applesauce",
               "Cream cheese",
               "Cream",
               "Oats",
               "Pineapple",
               "Cherries",
               "Potatoes",
               "Sweet potatoes",
               "Celery",
               "Cucumber",
               "Cabbage",
               "heavy cream",
               "sour cream",
               "Green beans",
               "Buckwheat",
               "Millet",
               "Rice",
               "amaranth",
               "quinoa",
               "brown rice",
               "white rice",
               "sorghum",
               "rye",
               "barley",
               "cassava flour",
               "Peanuts",
               "brazil nuts",
               "cashews",
               "pumpkin seeds (pepitas)",
               "hazelnuts",
               "macadamia nuts",
               "pistachio nuts",
               "sunflower seed kernels",
               "coconut flour",
               "chestnut flour",
               "Chickpeas",
               "Lentils",
               "Blackeye pea",
               "Chickpeas (garbanzo beans",
               "Peas",
               "monterey jack cheese",
               "American pasteurized process cheese food",
               "American pasteurized prepared cheese product",
               "American pasteurized process cheese product",
               "provolone cheese"]

ingredients.each do |ingredient|
  Ingredient.create!(name: "#{ingredient}")
end
