require "open-uri"

Recipe.destroy_all
Ingredient.destroy_all
Tag.destroy_all
Menu.destroy_all
admin = User.create!(email: "test1@test.com", password: "123456")

tags = ["Savoury snack",
        "Sweet snack",
        "Dessert",
        "Side",
        "Main",
        "Small plate",
        "Bread",
        "Component"]

tags.each do |tag|
  Tag.create!(name: tag)
end

puts "tags created"

meats = [
  "Sirloin",
  "Ribeye",
  "Tenderloin (filet mignon)",
  "Flank steak",
  "Chuck roast",
  "Brisket",
  "Short ribs",
  "Ground beef (minced beef)",
  "Pork chops",
  "Pork tenderloin",
  "Pork belly",
  "Spare ribs",
  "Pork shoulder (Boston butt)",
  "Ham",
  "Bacon",
  "Ground pork",
  "Lamb chops",
  "Leg of lamb",
  "Lamb shoulder",
  "Lamb shank",
  "Ground lamb",
  "Veal chops",
  "Veal tenderloin",
  "Veal cutlets",
  "Ground veal",
  "Chicken breast",
  "Chicken thighs",
  "Chicken drumsticks",
  "Whole chicken",
  "Duck breast",
  "Duck legs",
  "Turkey breast",
  "Turkey legs",
  "Ground chicken",
  "Ground turkey",
  "Venison (deer)",
  "Rabbit",
  "Pheasant",
  "Quail",
  "Wild boar",
  "Bison",
  "Elk",
  "Ostrich",
  "Liver",
  "Kidneys",
  "Hearts",
  "Tongue",
  "Sweetbreads",
  "Tripe",
  "Brains",
  "Pork sausages",
  "Chicken Sausages",
  "Hot dogs",
  "Ham",
  "Turkey",
  "Salami",
  "Pepperoni",
  "Bacon",
  "Corned beef",
  "Pastrami",
  "Spam",
  "Jerky"
]

meats.each do |meat|
  Ingredient.create!(name: "#{meat}", description: "Meat")
end

seafood = [
  "Salmon",
  "Tuna",
  "Cod",
  "Mahi Mahi",
  "Halibut",
  "Trout",
  "Snapper",
  "Mackerel",
  "Swordfish",
  "Haddock",
  "Tilapia",
  "Catfish",
  "Grouper",
  "Bass",
  "Perch",
  "Sole",
  "Flounder",
  "Sardines",
  "Anchovies",
  "Carp",
  "Pike",
  "Eel",
  "Wahoo",
  "Lobster",
  "Crab",
  "Shrimp (prawns)",
  "Crawfish (crayfish)",
  "Clams",
  "Mussels",
  "Oysters",
  "Scallops",
  "Abalone",
  "Conch",
  "Octopus",
  "Squid (calamari)",
  "Cuttlefish",
  "Cockles",
  "Razor clams",
  "Geoduck",
  "Caviar (roe)",
  "Seaweed (nori, wakame, kombu, dulse, etc.)",
  "Sea snails (whelks, periwinkles)"
]

seafood.each do |item|
  Ingredient.create!(name: "#{item}", description: "Seafood")
end

dairyandeggs = [
  "Cow's milk",
  "Goat's milk",
  "Sheep's milk",
  "Unsalted butter",
  "Salted butter",
  "Plain yogurt",
  "Flavored yogurt",
  "Greek yogurt",
  "Regular yogurt",
  "Cheddar cheese",
  "Mozzarella cheese",
  "Swiss cheese",
  "Feta cheese",
  "Parmesan cheese",
  "Brie cheese",
  "Blue cheese",
  "Goat cheese",
  "Heavy cream",
  "Whipping cream",
  "Sour cream",
  "Cottage Cheese",
  "Ricotta Cheese",
  "Mascarpone Cheese",
  "Cream Cheese",
  "Buttermilk",
  "Evaporated Milk",
  "Condensed Milk",
  "Ice Cream",
  "Gelato",
  "Sherbet",
  "Frozen Yogurt",
  "Kefir",
  "Labneh",
  "Whey",
  "Ghee (Clarified Butter)",
  "Quark",
  "Fromage Blanc",
  "Crème Fraîche",
  "Chicken eggs",
  "Duck eggs",
  "Quail eggs",
  "Egg whites",
  "Egg yolks",
  "Liquid egg whites (carton)",
  "Liquid egg yolks (carton)",
  "Egg beaters",
  "Powdered egg whites",
  "Powdered egg yolks"
]

dairyandeggs.each do |item|
  Ingredient.create!(name: "#{item}", description: "Dairy and eggs")
end

vegetables = [
  "Russet potatoes",
  "Yukon Gold potatoes",
  "Red potatoes",
  "Fingerling potatoes",
  "Purple potatoes",
  "Sweet potatoes",
  "New potatoes",
  "White onions",
  "Red onions",
  "Yellow onions",
  "Shallots",
  "Green onions (Scallions)",
  "Leeks",
  "Garlic",
  "Beef tomatoes",
  "Roma tomatoes",
  "Cherry tomatoes",
  "Grape tomatoes",
  "Heirloom tomatoes",
  "Plum tomatoes",
  "Orange carrots",
  "Purple carrots",
  "Yellow carrots",
  "White carrots",
  "Green bell peppers",
  "Red bell peppers",
  "Yellow bell peppers",
  "Orange bell peppers",
  "Iceberg lettuce",
  "Romaine lettuce",
  "Butterhead lettuce",
  "Arugula (Rocket)",
  "Red leaf lettuce",
  "Green leaf lettuce",
  "Boston lettuce",
  "Baby spinach",
  "Savoy spinach",
  "Broccoli",
  "Broccolini",
  "Broccoli rabe (Rapini)",
  "White cauliflower",
  "Purple cauliflower",
  "Romanesco cauliflower",
  "Green cabbage",
  "Red cabbage",
  "Savoy cabbage",
  "Napa cabbage (Chinese cabbage)",
  "Aubergine",
  "Globe eggplant",
  "Japanese eggplant",
  "Italian eggplant",
  "Zucchini (Courgette)",
  "Button mushrooms",
  "Cremini mushrooms",
  "Portobello mushrooms",
  "Shiitake mushrooms",
  "Oyster mushrooms",
  "Chanterelle mushrooms",
  "Enoki mushrooms",
  "Morel mushrooms",
  "Porcini mushrooms",
  "Green Beans (String Beans)",
  "Green peas",
  "Snow peas",
  "Snap peas",
  "Corn (Maize):",
  "Sweet corn",
  "Baby corn",
  "Red radishes",
  "Daikon radishes",
  "Celery",
  "English cucumbers",
  "Persian cucumbers",
  "Avocado",
  "Sugar pumpkins",
  "Pie pumpkins",
  "Kabocha squash",
  "Butternut squash",
  "Acorn squash",
  "Spaghetti squash",
  "Zucchini",
  "Asparagus",
  "Kale:",
  "Curly kale",
  "Lacinato kale (Dinosaur kale)",
]

vegetables.each do |item|
  Ingredient.create!(name: "#{item}", description: "Vegetable")
end

fruits = [
  "Granny Smith apples",
  "Red Delicious apples",
  "Gala apples",
  "Fuji apples",
  "Honeycrisp apples",
  "Pink Lady apples",
  "Golden Delicious apples",
  "Braeburn apples",
  "McIntosh apples",
  "Cavendish bananas",
  "Plantains",
  "Red bananas",
  "Lady Finger bananas",
  "Navel oranges",
  "Valencia oranges",
  "Blood oranges",
  "Mandarin oranges",
  "Clementines",
  "Satsumas",
  "Tangerines",
  "Seville oranges",
  "Red grapes",
  "Green grapes",
  "Black grapes",
  "Thompson seedless grapes",
  "Concord grapes",
  "Muscat grapes",
  "Strawberries",
  "Blueberries",
  "Raspberries",
  "Blackberries",
  "Cranberries",
  "Goji berries",
  "Acai berries",
  "Boysenberries",
  "Lemons",
  "Limes",
  "Grapefruits",
  "Pomelos",
  "Kumquats",
  "Yuzu",
  "Peaches",
  "Nectarines",
  "Plums",
  "Apricots",
  "Cherries",
  "Mangoes",
  "Pineapples",
  "Papayas",
  "Kiwifruits",
  "Passion fruits",
  "Guavas",
  "Lychees",
  "Dragon fruits",
  "Jackfruits",
  "Star fruits",
  "Watermelons",
  "Cantaloupes (Muskmelons)",
  "Honeydews",
  "Galia melons",
  "Crenshaw melons",
  "Granny Smith apples",
  "Red Delicious apples",
  "Gala apples",
  "Fuji apples",
  "Honeycrisp apples",
  "Pink Lady apples",
  "Golden Delicious apples",
  "Braeburn apples",
  "McIntosh apples",
  "Bartlett pears",
  "Bosc pears",
  "Anjou pears",
  "Asian pears",
  "Forelle pears",
  "Comice pears",
  "Bing cherries",
  "Rainier cherries",
  "Sweet cherries",
  "Sour cherries",
  "Red plums",
  "Black plums",
  "Green plums",
  "Hawaiian papayas",
  "Mexican papayas",
  "Caribbean papayas",
  "Black figs",
  "Brown figs",
  "Green figs",
  "Fuyu persimmons",
  "Hachiya persimmons",
  "Fresh cranberries",
  "Dried cranberries",
  "Green kiwifruits",
  "Gold kiwifruits",
  "Medjool dates",
  "Deglet Noor dates",
  "Red pomegranates",
  "White pomegranates",
  "Ataulfo mangoes",
  "Tommy Atkins mangoes",
  "Champagne mangoes",
  "Pink guavas",
  "White guavas",
  "Red lychees",
  "Yellow lychees",
  "Red dragon fruits",
  "White dragon fruits",
  "Purple passion fruits",
]

fruits.each do |item|
  Ingredient.create!(name: "#{item}", description: "Fruit")
end

grainsandcereals = [
  "Wheat berries",
  "Wheat flour",
  "Whole wheat bread",
  "Bulgur",
  "Farro",
  "Semolina",
  "Durum wheat",
  "White rice",
  "Brown rice",
  "Jasmine rice",
  "Basmati rice",
  "Arborio rice",
  "Sushi rice",
  "Black rice",
  "Wild rice",
  "Cornmeal",
  "Polenta",
  "Grits",
  "Corn flour",
  "Corn flakes",
  "Pearl barley",
  "Hulled barley",
  "Barley flour",
  "Rolled oats",
  "Steel-cut oats",
  "Instant oats",
  "Oat flour",
  "Rye berries",
  "Rye flour",
  "Pumpernickel bread",
  "Pearl millet",
  "Finger millet (Ragi)",
  "Foxtail millet",
  "Proso millet",
  "White quinoa",
  "Red quinoa",
  "Black quinoa",
  "Buckwheat groats",
  "Buckwheat flour",
  "Soba noodles",
  "Sorghum flour",
  "Sorghum syrup",
  "Teff flour",
  "Injera (Ethiopian flatbread)",
  "Fonio grains",
  "Amaranth grains",
  "Amaranth flour",
  "Spelt flour",
  "Spelt bread",
  "Kamut flour",
  "Kamut pasta",
  "Bulgur",
  "Farro",
  "Freekeh",
  "Triticale",
  "Emmer",
  "Einkorn",
  "Chia Seeds",
  "Hemp Seeds",
  "Sunflower Seeds",
  "Flax Seeds"
]

grainsandcereals.each do |item|
  Ingredient.create!(name: "#{item}", description: "Grains and cereal")
end

legumesandpulses = [
  "Brown lentils",
  "Green lentils",
  "Red lentils",
  "French lentils (Puy lentils)",
  "Black lentils (Beluga lentils)",
  "Canned chickpeas",
  "Dried chickpeas",
  "Canned black beans",
  "Dried black beans",
  "Canned kidney beans",
  "Dried kidney beans",
  "Canned navy beans",
  "Dried navy beans",
  "Canned pinto beans",
  "Dried pinto beans",
  "Canned cannellini beans",
  "Dried cannellini beans",
  "Dried adzuki beans",
  "Dried mung beans",
  "Mung bean sprouts",
  "Canned black-eyed peas",
  "Dried black-eyed peas",
  "Green split peas",
  "Yellow split peas",
  "Dried fava beans",
  "Edamame",
  "Tofu",
  "Tempeh",
  "Soy milk",
  "Soy flour",
  "Dried cowpeas",
  "Dried lima beans",
  "Green peas",
  "Split peas",
  "Dried lupini beans",
  "Chickpea Flour (Gram Flour/Besan)",
  "Whole urad dal",
  "Split urad dal (Black lentils)",
  "Whole moong dal",
  "Split moong dal",
  "Whole masoor dal",
  "Split masoor dal",
  "Split chana dal",
  "Split toor dal",
  "Whole green lentils",
  "Whole red lentils",
]

legumesandpulses.each do |item|
  Ingredient.create!(name: "#{item}", description: "Legumes and pulses")
end

nutsandseeds = [
  "Raw almonds",
  "Almond butter",
  "Almond flour",
  "Raw walnuts",
  "Walnut halves",
  "Raw cashews",
  "Cashew butter",
  "Raw pistachios",
  "Pistachio kernels",
  "Raw pecans",
  "Pecan halves",
  "Raw hazelnuts",
  "Hazelnut butter",
  "Raw macadamia nuts",
  "Raw Brazil nuts",
  "Raw pine nuts",
  "Raw peanuts",
  "Peanut butter",
  "Raw sunflower seeds",
  "Sunflower seed butter",
  "Raw pumpkin seeds",
  "Raw sesame seeds",
  "Tahini (sesame seed paste)",
  "Whole flax seeds",
  "Ground flax seeds (flaxseed meal)",
  "Hulled hemp seeds (hemp hearts)",
  "Hemp seed oil",
  "Raw poppy seeds",
  "Quinoa seeds",
  "Amaranth seeds",
  "Buckwheat groats",
  "Buckwheat flour",
  "Millet seeds",
  "Fresh pomegranate seeds",
  "Shredded coconut",
  "Coconut flakes",
  "Coconut flour",
  "Coconut oil",
  "Raw cashews",
  "Cashew butter",
  "Raw chestnuts",
]

nutsandseeds.each do |item|
  Ingredient.create!(name: "#{item}", description: "Nuts and seeds")
end

herbsandspices = [
  "Basil",
  "Parsley",
  "Cilantro (Coriander)",
  "Mint",
  "Thyme",
  "Rosemary",
  "Sage",
  "Oregano",
  "Dill",
  "Chives",
  "Bay Leaves",
  "Tarragon",
  "Marjoram",
  "Lavender",
  "Lemongrass",
  "Curry Leaves",
  "Cumin Seeds",
  "Coriander Seeds",
  "Fennel Seeds",
  "Mustard Seeds",
  "Fenugreek Seeds",
  "Caraway Seeds",
  "Celery Seeds",
  "Nigella Seeds (Black Cumin)",
  "Cardamom Pods",
  "Cloves",
  "Cinnamon Sticks",
  "Nutmeg",
  "Allspice",
  "Star Anise",
  "Saffron",
  "Turmeric",
  "Ginger",
  "Garlic Powder",
  "Onion Powder",
  "Chili Powder",
  "Paprika",
  "Cayenne Pepper",
  "Red Pepper Flakes",
  "Black Pepper",
  "White Pepper",
  "Ground Cumin",
  "Ground Coriander",
  "Ground Ginger",
  "Ground Turmeric",
  "Ground Cinnamon",
  "Ground Cloves",
  "Ground Nutmeg",
  "Ground Allspice",
  "Ground Cardamom",
  "Ground Fenugreek",
  "Curry Powder",
  "Garam Masala",
  "Chinese Five Spice",
  "Za'atar",
  "Herbes de Provence",
  "Italian Seasoning",
  "Ras el Hanout",
  "Cajun Seasoning",
  "Old Bay Seasoning",
  "Adobo Seasoning",
  "Jerk Seasoning",
  "Poultry Seasoning",
  "Taco Seasoning",
  "Fajita Seasoning",
  "Berbere Spice",
  "Dukkah",
  "Harissa",
  "Sumac",
  "Asafoetida (Hing)",
  "Epazote",
  "Kaffir Lime Leaves",
  "Lemongrass",
  "Mace",
  "Vanilla Bean",
]

herbsandspices.each do |item|
  Ingredient.create!(name: "#{item}", description: "Herbs and spices")
end

oilsandfats = [
  "Extra virgin olive oil",
  "Virgin olive oil",
  "Pure olive oil",
  "Light olive oil",
  "Virgin coconut oil",
  "Refined coconut oil",
  "Fractionated coconut oil",
  "Canola Oil (Rapeseed Oil)",
  "Soybean oil",
  "Corn oil",
  "Sunflower oil",
  "Safflower oil",
  "Cottonseed oil",
  "Avocado Oil",
  "Peanut Oil (Groundnut Oil)",
  "Toasted sesame oil",
  "Unrefined sesame oil",
  "Flaxseed Oil (Linseed Oil)",
  "Walnut Oil",
  "Grapeseed Oil",
  "Almond Oil",
  "Hazelnut Oil (Filbert Oil)",
  "Macadamia Nut Oil",
  "Pistachio Oil",
  "Rice Bran Oil",
  "Sunflower Oil",
  "Safflower Oil",
  "Unsalted butter",
  "Salted butter",
  "Ghee (Clarified Butter)",
  "Lard",
  "Duck Fat",
  "Goose Fat",
  "Schmaltz (Rendered Chicken Fat)",
  "Tallow (Beef Fat)",
  "Shortening",
  "Margarine",
  "Cocoa Butter",
  "Palm Oil",
  "Fish Oil",
  "Emu Oil",
  "Hemp Seed Oil",
  "Camelina Oil",
  "Pumpkin Seed Oil",
  "Apricot Kernel Oil",
  "Rice Bran Oil",
  "Tamanu Oil",
  "Black Seed Oil",
  "Argan Oil",
  "Jojoba Oil",
  "Meadowfoam Oil",
  "Marula Oil",
  "Baobab Oil",
  "Neem Oil",
  "Tea Tree Oil",
  "Castor Oil",
  "Rosehip Oil",
  "Evening Primrose Oil",
  "Borage Oil",
  "Sea Buckthorn Oil",
  "Wheat Germ Oil",
]

oilsandfats.each do |item|
  Ingredient.create!(name: "#{item}", description: "Oils and fats")
end

sweeteners = [
  "White Sugar (Granulated Sugar)",
  "Brown Sugar",
  "Confectioners' Sugar (Powdered Sugar)",
  "Cane Sugar",
  "Turbinado Sugar",
  "Demerara Sugar",
  "Muscovado Sugar",
  "Coconut Sugar",
  "Date Sugar",
  "Maple Syrup",
  "Honey",
  "Agave Syrup",
  "Molasses",
  "Rice Syrup (Brown Rice Syrup)",
  "Corn Syrup",
  "High-Fructose Corn Syrup",
  "Stevia",
  "Monk Fruit Sweetener",
  "Xylitol",
  "Erythritol",
  "Sorbitol",
  "Maltitol",
  "Allulose",
  "Invert Sugar",
  "Barley Malt Syrup",
]

sweeteners.each do |item|
  Ingredient.create!(name: "#{item}", description: "Sweeteners")
end

condimentsandsauces = [
  "Ketchup",
  "Yellow mustard",
  "Dijon mustard",
  "Whole grain mustard",
  "Mayonnaise",
  "BBQ Sauce",
  "Tabasco",
  "Sriracha",
  "Soy Sauce",
  "Worcestershire Sauce",
  "Fish Sauce",
  "Hoisin Sauce",
  "Oyster Sauce",
  "Teriyaki Sauce",
  "Sweet Chili Sauce",
  "Tartar Sauce",
  "Ranch Dressing",
  "Blue Cheese Dressing",
  "Caesar Dressing",
  "Italian Dressing",
  "Balsamic Vinaigrette",
  "Thousand Island Dressing",
  "Salsa",
  "Guacamole",
  "Hummus",
  "Pesto",
  "Tahini",
  "Harissa",
  "Chimichurri Sauce",
  "Hollandaise Sauce",
  "Bechamel Sauce",
  "Marinara Sauce",
  "Alfredo Sauce",
  "Pesto Sauce",
  "Sriracha Mayo",
  "Cocktail Sauce",
  "Soy Ginger Glaze",
  "Sweet and Sour Sauce",
  "Gochujang",
  "Peanut Sauce",
  "Miso Paste",
  "Tzatziki Sauce",
  "Chipotle Mayo",
  "Enchilada Sauce",
  "Szechuan Sauce",
  "Ponzu Sauce",
  "Black Bean Sauce",
  "Thai Curry Paste",
  "Mole Sauce",
  "Pickles",
  "Relish",
  "Chutney",
  "Aioli",
  "Burger Sauce"
]

condimentsandsauces.each do |item|
  Ingredient.create!(name: "#{item}", description: "Condiments and sauces")
end

bakingandcookingessentials = [
  "All-Purpose Flour",
  "Granulated Sugar",
  "Brown Sugar",
  "Baking Powder",
  "Baking Soda",
  "Salt",
  "Vanilla Extract",
  "Yeast",
  "Cornstarch",
  "Cocoa Powder",
  "Chocolate Chips",
  "Vegetable Oil",
  "Olive Oil",
  "Butter",
  "Eggs",
  "Milk",
  "Cream (Heavy Cream, Whipping Cream)",
  "Sour Cream",
  "Yogurt",
  "Honey",
  "Molasses",
  "Maple Syrup",
  "Cornmeal",
  "Bread Crumbs",
  "Panko Bread Crumbs",
  "Canned Tomatoes",
  "Crushed Tomatoes (can)",
  "Diced Tomatoes (can)",
  "Tomato Paste (can)",
  "Chicken Broth",
  "Beef Broth",
  "Vegetable Broth",
  "White Vinegar",
  "Apple Cider Vinegar",
  "Balsamic Vinegar",
  "Soy Sauce",
  "Worcestershire Sauce",
  "Dijon Mustard",
  "Canned Black Beans",
  "Canned Kidney Beans",
  "Canned Chickpeas",
  "Canned Coconut Milk",
  "Canned Pumpkin Puree",
  "Canned Condensed Milk",
  "Gelatin",
  "Shortening",
  "Confectioners' Sugar",
  "Almond Extract",
  "Lemon Extract",
  "Cream of Tartar",
  "White Wine",
  "Red Wine",
  "Rice Vinegar",
  "Mirin",
  "Cooking Wine",
  "Coconut Oil",
  "Agar Agar",
]

bakingandcookingessentials.each do |item|
  Ingredient.create!(name: "#{item}", description: "Baking and cooking essentials")
end

beverages = [
  "Coffee",
  "Tea",
  "Water",
  "Milk",
  "Almond Milk",
  "Soy Milk",
  "Oat Milk",
  "Coconut Milk",
  "Rice Milk",
  "Orange Juice",
  "Apple Juice",
  "Grape Juice",
  "Cranberry Juice",
  "Carbonated Water",
  "Lemonade",
  "Hot Chocolate",
  "Ginger Tea",
  "Chai Tea",
  "Matcha Tea",
  "Kombucha",
  "Red Wine",
  "White Wine",
  "Rosé Wine",
  "Lager",
  "Ale",
  "Stout",
  "Vodka",
  "Rum",
  "Whiskey",
  "Gin",
  "Tequila",
  "Champagne",
  "Sparkling Wine",
  "Sake",
  "Cider",
  "Coconut Water",
  "Tonic Water",
  "Cola",
  "Lemon-Lime Soda",
  "Ginger Ale",
  "Coconut Water",
  "Fruit Infused Water",
  "Peppermint Infusion",
  "Chamomile Infusion",
  "Yerba Mate",
  "Espresso",
  "Americano",
  "Cappuccino",
  "Latte",
  "Macchiato",
  "Flat White",
  "Irish Coffee",
  "Turkish Coffee",
]

beverages.each do |item|
  Ingredient.create!(name: "#{item}", description: "Beverage")
end

pasta = [
  "Spaghetti",
  "Linguine",
  "Fettuccine",
  "Tagliatelle",
  "Penne",
  "Rigatoni",
  "Fusilli",
  "Rotini",
  "Farfalle (Bowtie)",
  "Conchiglie (Shell)",
  "Orecchiette",
  "Ravioli",
  "Tortellini",
  "Gnocchi",
  "Orzo",
  "Cavatappi",
  "Manicotti",
  "Cannelloni",
  "Gemelli",
  "Campanelle",
  "Pappardelle",
  "Capellini (Angel Hair)",
  "Ziti",
  "Rotelle",
  "Paccheri",
  "Paccheri",
  "Strozzapreti",
  "Mafaldine",
  "Gigli",
  "Farfalloni",
]

pasta.each do |item|
  Ingredient.create!(name: "#{item}", description: "Pasta")
end

miscellaneous = [
  "Truffle Oil",
  "Vanilla Beans",
  "Saffron Threads",
  "Edible Gold Leaf",
  "Lavender Extract",
  "Rose Water",
  "Orange Blossom Water",
  "Almond Extract",
  "Peppermint Extract",
  "Coconut Extract",
  "Maple Extract",
  "Food Coloring (Liquid, Gel)",
  "Agar Agar Powder",
  "Xanthan Gum",
  "Guar Gum",
  "Arrowroot Powder",
  "Cornstarch",
  "Cream of Tartar",
  "Instant Coffee",
  "Baking Spray (Non-stick spray)",
  "Pectin",
  "Malt Extract",
  "Yeast",
  "Balsamic Vinegar",
  "Rice Vinegar",
  "Apple Cider Vinegar",
  "Mirin",
  "Miso Paste",
  "Tahini Paste",
  "Fish Sauce",
  "Worcestershire Sauce",
  "Gochujang",
  "Hoisin Sauce",
  "Harissa Paste",
  "Wasabi Paste",
  "Mirin",
  "Rice Wine",
  "Rice Vinegar",
  "Seaweed Sheets (Nori)",
  "Tamarind Paste",
  "Furikake",
  "Rice Paper",
  "Coconut Aminos",
  "Dashi Powder",
  "Thai Curry Paste",
  "Lemon Grass",
  "Galangal",
  "Kaffir Lime Leaves",
  "Rice Noodles",
  "Udon Noodles",
  "Soba Noodles",
  "Coconut Cream",
  "Brioche Bun"
]

miscellaneous.each do |item|
  Ingredient.create!(name: "#{item}", description: "Miscellaneous")
end

#Building Recipes:

def create_recipe(recipe, ingredients, tags, photo)
  ingredients.each do |ingredient_data|
    ingredient = Ingredient.find_or_create_by(name: ingredient_data[:ingredient])

    recipe.recipe_ingredients.create!(
      ingredient: ingredient,
      quantity: ingredient_data[:quantity],
      unit_of_measure: ingredient_data[:unit_of_measure]
    )
  end

  tags.each do |tag_data|
    tag = Tag.where(name: tag_data[:name]).first



    recipe.recipe_tags.create!(tag_id: tag.id, recipe_id: recipe.id)
  end

  opened_photo = URI.open(photo)
  recipe.photo.attach(io: opened_photo, filename: "nes.png", content_type: "image/png")
  recipe.save
end



# Define recipes and their associated ingredients
recipes_with_data = [
  {
    recipe_data: {
      user_id: admin.id,
      name: "Smash Burgers",
      description: "Dirty, salty, fatty, but tasty af",
      instructions: "Combine melted butter, salt, and beef. Ball up into equal size and refrigerate. When ready to fry, 'smash' the patty and fry on a high heat. Serve immediately with plenty burger sauce in a toasted bun.",
      prep_time: 10,
      cook_time: 10,
      meal_type: ["Lunch", "Dinner"]
    },
    ingredients: [
      { ingredient: "Ground beef (minced beef)", quantity: 100, unit_of_measure: "g" },
      { ingredient: "Unsalted butter", quantity: 20, unit_of_measure: "g" },
      { ingredient: "Salt", quantity: 1, unit_of_measure: "pinch" },
      { ingredient: "Paprika", quantity: 1, unit_of_measure: "pinch" },
      { ingredient: "Brioche Bun", quantity: 1, unit_of_measure: "unit" },
      { ingredient: "Burger Sauce", quantity: 25, unit_of_measure: "g" }
    ],
    tags: [
      { name: "Main" }
    ],
    photo: "https://res.cloudinary.com/dfipoufmj/image/upload/v1712159137/pexels-jonathan-borba-2983101_i2amcd.jpg"
  }
  # Add more recipes with associated ingredients as needed
]

# Create recipes and their associated ingredients using the helper method
recipes_with_data.each do |recipe|
  recipe_data = recipe[:recipe_data]
  ingredients = recipe[:ingredients]
  tags = recipe[:tags]
  photo = recipe[:photo]

  new_recipe = Recipe.create!(recipe_data)

  create_recipe(new_recipe, ingredients, tags, photo)
end

























# smash_burger = { name: "Smash Burgers",
#                  description: "Dirty, salty, fatty, but tasty af",
#                  instructions: "Combine melted butter, salt, and beef. Ball up into equal size and refrigerate. When ready to fry, 'smash' the patty and fry on a high heat. Serve immediately",
#                  prep_time: 10,
#                  cook_time: 10,
#                  meal_type: ["Lunch", "Dinner"] }

# ingredients = [
#   {
#     ingredient: "Ground beef (minced beef)",
#     quantity: 100,
#     unit_of_measure: "g"
#   },
#   {
#     ingredient: "Unsalted butter",
#     quantity: 100,
#     unit_of_measure: "g"
#   },
#   {
#     ingredient: "Salt",
#     quantity: 1,
#     unit_of_measure: "pinch"
#   },
#   {
#     ingredient: "Paprika",
#     quantity: 1,
#     unit_of_measure: "pinch"
#   },
#   {
#     ingredient: "Brioche Bun",
#     quantity: 100,
#     unit_of_measure: "g"
#   },
#   {
#     ingredient: "Burger Sauce",
#     quantity: 100,
#     unit_of_measure: "g"
#   }
# ]

# ingredients.each do |ingredient|
#   smash_burger.recipe_ingredients.create(ingredient: ingredient[:ingredient],
#                                           quantity: ingredient[:quantity],
#                                           unit_of_measure: ingredient[:unit_of_measure])
# end

# recipes.each do |recipe|
#   Recipe.create!(user_id: admin.id,
#                  name: recipe[:name],
#                  description: recipe[:description],
#                  instructions: recipe[:instructions],
#                  prep_time: recipe[:prep_time],
#                  cook_time: recipe[:cook_time],
#                  meal_type: recipe[:meal_type])
# end



# Recipe.create!(user_id: admin.id, name: "Blueberry Pancakes",
              #  description: "Fluffy pancakes bursting with blueberries",
              #  instructions: "Mix flour, baking powder, milk, eggs, and blueberries. Cook on a hot griddle until golden brown. Serve with maple syrup.",
              #  prep_time: 15, cook_time: 15, meal_type: ["Breakfast"])

# Recipe.create!(user_id: admin.id, name: "Chicken Caesar Salad",
#                description: "Classic salad with grilled chicken, romaine lettuce, and Caesar dressing",
#                instructions: "Grill chicken until cooked through. Toss chopped romaine lettuce with Caesar dressing. Top with sliced chicken and croutons.",
#                prep_time: 20, cook_time: 15, meal_type: ["Lunch"])

# Recipe.create!(user_id: admin.id, name: "Spaghetti Bolognese",
#                description: "Hearty pasta dish with savory meat sauce",
#                instructions: "Cook spaghetti until al dente. Meanwhile, brown ground beef with onions and garlic. Add tomatoes, herbs, and simmer. Serve sauce over cooked spaghetti.",
#                prep_time: 20, cook_time: 30, meal_type: ["Dinner"])

# Recipe.create!(user_id: admin.id, name: "Avocado Toast",
#                description: "Sliced avocado on toasted bread with seasoning",
#                instructions: "Toast bread until golden brown. Mash avocado onto toast. Sprinkle with salt, pepper, and red pepper flakes. Drizzle with olive oil.",
#                prep_time: 10, cook_time: 5, meal_type: ["Breakfast"])

# Recipe.create!(user_id: admin.id, name: "Turkey Sandwich",
#                description: "Classic sandwich with roasted turkey, lettuce, and tomato",
#                instructions: "Layer roasted turkey, lettuce, and tomato slices between two slices of bread. Add condiments as desired.",
#                prep_time: 10, cook_time: 0, meal_type: ["Lunch"])

# Recipe.create!(user_id: admin.id, name: "Beef Stir Fry",
#                description: "Quick and flavorful stir-fry with beef and vegetables",
#                instructions: "Stir-fry beef strips with bell peppers, onions, and broccoli. Add soy sauce and garlic. Serve over rice.",
#                prep_time: 15, cook_time: 15, meal_type: ["Dinner"])

# Recipe.create!(user_id: admin.id, name: "Omelette",
#                description: "Fluffy omelette filled with cheese, tomatoes, and spinach",
#                instructions: "Whisk eggs with a splash of milk. Cook in a hot skillet, adding cheese, tomatoes, and spinach. Fold and serve hot.",
#                prep_time: 10, cook_time: 10, meal_type: ["Breakfast"])

# Recipe.create!(user_id: admin.id, name: "Grilled Cheese Sandwich",
#                description: "Classic sandwich with melted cheese between grilled bread slices",
#                instructions: "Butter bread slices on one side. Place cheese between slices, buttered sides out. Grill in a skillet until golden brown and cheese is melted.",
#                prep_time: 5, cook_time: 10, meal_type: ["Lunch"])

# Recipe.create!(user_id: admin.id, name: "Salmon with Roasted Vegetables",
#                description: "Healthy dish with baked salmon and assorted roasted vegetables",
#                instructions: "Season salmon fillets with herbs and lemon juice. Roast alongside seasoned vegetables until cooked through. Serve hot.",
#                prep_time: 20, cook_time: 25, meal_type: ["Dinner"])

# Recipe.create!(user_id: admin.id, name: "Yogurt Parfait",
#                description: "Layered parfait with yogurt, granola, and fresh berries",
#                instructions: "Alternate layers of yogurt, granola, and berries in a glass. Repeat layers until full. Serve chilled.",
#                prep_time: 10, cook_time: 0, meal_type: ["Breakfast"])

# Recipe.create!(user_id: admin.id, name: "Caesar Wrap",
#                description: "Wrap filled with grilled chicken, romaine lettuce, and Caesar dressing",
#                instructions: "Grill chicken until cooked through. Toss with chopped romaine lettuce and Caesar dressing. Wrap in a tortilla.",
#                prep_time: 15, cook_time: 15, meal_type: ["Lunch"])

# Recipe.create!(user_id: admin.id, name: "Beef Tacos",
#                description: "Mexican street food favorite with seasoned beef and toppings",
#                instructions: "Brown ground beef with taco seasoning. Warm tortillas. Assemble tacos with beef, lettuce, tomato, cheese, and salsa.",
#                prep_time: 15, cook_time: 15, meal_type: ["Dinner"])

# Recipe.create!(user_id: admin.id, name: "Fruit Salad",
#                description: "Refreshing salad with assorted fruits and honey-lime dressing",
#                instructions: "Combine sliced fruits in a bowl. Drizzle with honey-lime dressing. Toss gently to coat. Serve chilled.",
#                prep_time: 15, cook_time: 0, meal_type: ["Breakfast"])

# Recipe.create!(user_id: admin.id, name: "BLT Sandwich",
#                description: "Classic sandwich with bacon, lettuce, and tomato",
#                instructions: "Fry bacon until crispy. Toast bread slices. Layer bacon, lettuce, and tomato between slices. Add mayonnaise if desired.",
#                prep_time: 10, cook_time: 10, meal_type: ["Lunch"])

# Recipe.create!(user_id: admin.id, name: "Pasta Primavera",
#                description: "Light and colorful pasta dish with mixed vegetables",
#                instructions: "Cook pasta until al dente. Saute assorted vegetables in olive oil. Toss with cooked pasta and Parmesan cheese.",
#                prep_time: 15, cook_time: 20, meal_type: ["Dinner"])

# Recipe.create!(user_id: admin.id, name: "Smoothie Bowl",
#                description: "Thick smoothie topped with granola, fruit, and seeds",
#                instructions: "Blend frozen fruit with yogurt or milk until smooth. Pour into a bowl and add toppings such as granola, sliced fruit, and chia seeds.",
#                prep_time: 10, cook_time: 0, meal_type: ["Breakfast"])

# Recipe.create!(user_id: admin.id, name: "Mushroom Soup",
#                description: "Creamy soup made with mushrooms, onions, and thyme",
#                instructions: "Saute mushrooms and onions until soft. Add broth and thyme. Simmer until flavors meld. Blend until smooth. Serve hot.",
#                prep_time: 20, cook_time: 25, meal_type: ["Lunch"])

# Recipe.create!(user_id: admin.id, name: "Chicken Alfredo Pasta",
#                description: "Creamy pasta dish with grilled chicken and Parmesan cheese",
#                instructions: "Cook pasta until al dente. Grill chicken until cooked through. Prepare Alfredo sauce with cream, butter, and Parmesan cheese. Toss cooked pasta with sauce and sliced chicken.",
#                prep_time: 20, cook_time: 20, meal_type: ["Dinner"])

# Recipe.create!(user_id: admin.id, name: "French Toast",
#                description: "Classic breakfast dish with bread dipped in egg mixture and fried",
#                instructions: "Whisk eggs with milk and cinnamon. Dip bread slices in mixture and fry until golden brown. Serve with syrup and powdered sugar.",
#                prep_time: 10, cook_time: 10, meal_type: ["Breakfast"])

# Recipe.create!(user_id: admin.id, name: "Chicken Salad Sandwich",
#                description: "Savory salad made with chicken, celery, and mayonnaise",
#                instructions: "Mix cooked chicken with chopped celery, mayonnaise, and seasonings. Serve on bread or in a wrap with lettuce and tomato.",
#                prep_time: 15, cook_time: 0, meal_type: ["Lunch"])

# Recipe.create!(user_id: admin.id, name: "Egg Fried Rice",
#                description: "Quick and flavorful fried rice with scrambled eggs and vegetables",
#                instructions: "Cook rice according to package instructions. Scramble eggs in a skillet and set aside. Stir-fry vegetables such as peas, carrots, and bell peppers. Add cooked rice and eggs to the skillet. Season with soy sauce and sesame oil. Cook until heated through.",
#                prep_time: 15, cook_time: 15, meal_type: ["Dinner"])

# Recipe.create!(user_id: admin.id, name: "Bagel with Lox",
#                description: "Classic breakfast or brunch dish with a toasted bagel topped with smoked salmon, cream cheese, and garnishes",
#                instructions: "Toast a bagel until golden brown. Spread cream cheese on both halves. Layer slices of smoked salmon on one half. Top with sliced tomato, red onion, capers, and fresh dill. Sandwich the two halves together and serve.",
#                prep_time: 10, cook_time: 0, meal_type: ["Breakfast"])

# Recipe.create!(user_id: admin.id, name: "Chicken Caesar Wrap",
#                description: "Wrap filled with grilled chicken, romaine lettuce, and Caesar dressing",
#                instructions: "Grill chicken until cooked through. Toss with chopped romaine lettuce and Caesar dressing. Wrap in a tortilla.",
#                prep_time: 15, cook_time: 15, meal_type: ["Lunch"])

# Recipe.create!(user_id: admin.id, name: "Beef Burrito Bowl",
#                description: "Mexican-inspired bowl with seasoned beef, rice, beans, and toppings",
#                instructions: "Cook rice according to package instructions. Brown ground beef with taco seasoning. Serve over rice with black beans, corn, diced tomatoes, avocado slices, and shredded cheese. Garnish with cilantro and lime wedges.",
#                prep_time: 20, cook_time: 25, meal_type: ["Dinner"])

# Recipe.create!(user_id: admin.id, name: "Fruit Smoothie",
              #  description: "Refreshing drink made with assorted fruits, yogurt, and honey",
              #  instructions: "Blend together mixed fruits such as berries, bananas, and mango with yogurt and a drizzle of honey until smooth. Serve immediately.",
              #  prep_time: 10, cook_time: 0, meal_type: ["Breakfast"])

puts "recipes created"



# Recipe.all.each do |recipe|

#   photos = [
#     "https://res.cloudinary.com/dfipoufmj/image/upload/v1711536399/pexels-pascal-claivaz-410648_tsje0x.jpg",
#     # "https://res.cloudinary.com/dfipoufmj/image/upload/v1711536399/pexels-nerfee-mirandilla-3186654_lyiovo.jpg",
#     # "https://res.cloudinary.com/dfipoufmj/image/upload/v1711536399/pexels-robin-stickel-70497_fomzi6.jpg",
#     # "https://res.cloudinary.com/dfipoufmj/image/upload/v1711536398/pexels-lumn-604969_l4nqnd.jpg",
#     # "https://res.cloudinary.com/dfipoufmj/image/upload/v1711536398/pexels-dana-tentis-691114_llulqz.jpg",
#     # "https://res.cloudinary.com/dfipoufmj/image/upload/v1711536398/pexels-ella-olsson-1640772_yciwhn.jpg",
#     # "https://res.cloudinary.com/dfipoufmj/image/upload/v1711536397/pexels-lisa-fotios-1279330_nfpmgs.jpg",
#     # "https://res.cloudinary.com/dfipoufmj/image/upload/v1711536397/pexels-chan-walrus-958545_gy1o9m.jpg",
#     # "https://res.cloudinary.com/dfipoufmj/image/upload/v1711536395/pexels-jane-trang-doan-1099680_aszdqe.jpg",
#     # "https://res.cloudinary.com/dfipoufmj/image/upload/v1711536394/pexels-jang-_s-_-699953_s5hoa4.jpg",
#     # "https://res.cloudinary.com/dfipoufmj/image/upload/v1711536394/pexels-ash-376464_1_fo8uyf.jpg",
#     # "https://res.cloudinary.com/dfipoufmj/image/upload/v1711457480/development/ft2ujru7qgg1d980ej4ccr565icn.jpg"
#   ]

#   piccy = photos.sample(1).first
#   opened_pic = URI.open(piccy)
#   recipe.photo.attach(io: opened_pic, filename: "nes.png", content_type: "image/png") unless recipe.photo.attached?
#   recipe.save
# end

# building_ingredients = [
#   {ingredient: "", quantity: 1, unit_of_measure: ""}
# ]



# Recipe.where(name: "").recipe_ingredients.create(ingredient: Ingredient.where(name: ""),
#                                                  quantity: 2,
#                                                  unit_of_measure: "grams")
