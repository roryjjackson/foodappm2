# require "open-uri"

Recipe.destroy_all
Ingredient.destroy_all
Tag.destroy_all
Menu.destroy_all
admin = User.create!(email: "test1@test.com", password: "123456")


tags = ["Snack",
        "Dessert",
        "Sweet Treat",
        "Pastry",
        "Side",
        "Main",
        "Small Plate",
        "Bread",
        "Component",
        "Baked Goods",
        "Mediterranean",
        "Asian",
        "Mexican",
        "Indian",
        "American",
        "Japanese",
        "Italian",
        "European",
        "South American",
        "African",
        "Caribbean",
        "Salad"
       ]

tags.each do |tag|
  Tag.create!(name: tag)
end

sirloin = "Sirloin"
ribeye = "Ribeye"
filet_steak = "Tenderloin (filet mignon)"
flank_steak = "Flank steak"
chuck_roast = "Chuck roast"
brisket = "Brisket"
short_ribs = "Short ribs"
ground_beef = "Ground beef"
pork_chops = "Pork chops"
pork_tenderloin = "Pork tenderloin"
pork_belly = "Pork belly"
spare_ribs = "Spare ribs"
pork_shoulder = "Pork shoulder"
gammon = "Gammon"
bacon = "Bacon"
ground_pork = "Ground pork"
lamb_chops = "Lamb chops"
leg_of_lamb = "Leg of lamb"
lamb_shoulder = "Lamb shoulder"
lamb_shank = "Lamb shank"
ground_lamb = "Ground lamb"
veal_chops = "Veal chops"
veal_tenderloin = "Veal tenderloin"
ground_veal = "Ground veal"
chicken_breast = "Chicken breast"
chicken_thighs = "Chicken thighs"
chicken_drumsticks = "Chicken drumsticks"
whole_chicken = "Whole chicken"
duck_breast = "Duck breast"
duck_legs = "Duck legs"
turkey_breast = "Turkey breast"
turkey_legs = "Turkey legs"
ground_chicken = "Ground chicken"
ground_turkey = "Ground turkey"
venison = "Venison"
rabbit = "Rabbit"
pheasant = "Pheasant"
quail = "Quail"
pork_sausages = "Pork sausages"
chicken_sausages = "Chicken Sausages"
hot_dogs = "Hot dogs"
salami = "Salami"
pepperoni = "Pepperoni"
pastrami = "Pastrami"
salmon = "Salmon"
tuna = "Tuna"
cod = "Cod"
mahi_mahi = "Mahi Mahi"
halibut = "Halibut"
trout = "Trout"
snapper = "Snapper"
mackerel = "Mackerel"
swordfish = "Swordfish"
haddock = "Haddock"
sea_bass = "Sea Bass"
perch = "Perch"
sole = "Sole"
anchovies = "Anchovies"
eel = "Eel"
wahoo = "Wahoo"
lobster = "Lobster"
crab = "Crab"
prawns = "Prawns"
clams = "Clams"
mussels = "Mussels"
oysters = "Oysters"
scallops = "Scallops"
conch = "Conch"
octopus = "Octopus"
squid = "Squid"
caviar = "Caviar"
milk = "Milk"
unsalted_butter = "Unsalted butter"
salted_butter = "Salted butter"
plain_yogurt = "Plain yogurt"
greek_yogurt = "Greek yogurt"
cheddar = "Cheddar"
mozzarella = "Mozzarella"
swiss = "Swiss"
feta = "Feta"
parmesan = "Parmesan"
brie = "Brie"
blue_cheese = "Blue cheese"
goat_cheese = "Goat cheese"
heavy_cream = "Heavy cream"
whipping_cream = "Whipping cream"
sour_cream = "Sour cream"
cottage_cheese = "Cottage Cheese"
ricotta_cheese = "Ricotta Cheese"
mascarpone_cheese = "Mascarpone Cheese"
cream_cheese = "Cream Cheese"
buttermilk = "Buttermilk"
condensed_milk = "Condensed Milk"
ghee = "Ghee"
crème_fraîche = "Crème Fraîche"
egg_whites = "Egg whites"
egg_yolks = "Egg yolks"
whole_eggs = "Whole Eggs"
russet_potatoes = "Russet potatoes"
maris_piper_potatoes = "Maris Piper Potatoes"
red_potatoes = "Red potatoes"
sweet_potatoes = "Sweet potatoes"
new_potatoes = "New potatoes"
white_onions = "White onions"
red_onions = "Red onions"
yellow_onions = "Yellow onions"
shallots = "Shallots"
green_onions = "Green onions"
leeks = "Leeks"
garlic = "Garlic"
beef_tomatoes = "Beef tomatoes"
cherry_tomatoes = "Cherry tomatoes"
carrots = "Carrots"
green_bell_peppers = "Green bell peppers"
red_bell_peppers = "Red bell peppers"
yellow_bell_peppers = "Yellow bell peppers"
orange_bell_peppers = "Orange bell peppers"
iceberg_lettuce = "Iceberg lettuce"
romaine_lettuce = "Romaine lettuce"
rocket = "Rocket"
baby_spinach = "Baby spinach"
broccoli = "Broccoli"
tenderstem = "Tenderstem"
white_cauliflower = "White cauliflower"
green_cabbage = "Green cabbage"
red_cabbage = "Red cabbage"
savoy_cabbage = "Savoy cabbage"
chinese_cabbage = "Chinese cabbage"
aubergine = "Aubergine"
courgette = "Courgette"
button_mushrooms = "Button mushrooms"
cremini_mushrooms = "Cremini mushrooms"
portobello_mushrooms = "Portobello mushrooms"
shiitake_mushrooms = "Shiitake mushrooms"
oyster_mushrooms = "Oyster mushrooms"
chanterelle_mushrooms = "Chanterelle mushrooms"
porcini_mushrooms = "Porcini mushrooms"
green_beans = "Green Beans"
green_peas = "Green peas"
snow_peas = "Snow peas"
snap_peas = "Snap peas"
corn_on_the_cob = "Corn on the cob"
sweet_corn = "Sweet corn"
baby_corn = "Baby corn"
red_radishes = "Red radishes"
daikon_radishes = "Daikon radishes"
celery = "Celery"
cucumbers = "Cucumbers"
avocado = "Avocado"
pumpkins = "Pumpkins"
butternut_squash = "Butternut squash"
spaghetti_squash = "Spaghetti squash"
asparagus = "Asparagus"
kale = "Kale"
apples = "Apples"
granny_smith_apples = "Granny Smith apples"
pink_lady_apples = "Pink Lady apples"
bananas = "Bananas"
plantains = "Plantains"
oranges = "Oranges"
clementines = "Clementines"
satsumas = "Satsumas"
tangerines = "Tangerines"
red_grapes = "Red grapes"
green_grapes = "Green grapes"
black_grapes = "Black grapes"
strawberries = "Strawberries"
blueberries = "Blueberries"
raspberries = "Raspberries"
blackberries = "Blackberries"
cranberries = "Cranberries"
dried_cranberries = "Dried Cranberries"
dried_apricot = "Dried Apricot"
raisins = "Raisins"
goji_berries = "Goji berries"
lemons = "Lemons"
limes = "Limes"
grapefruits = "Grapefruits"
peaches = "Peaches"
nectarines = "Nectarines"
plums = "Plums"
apricots = "Apricots"
cherries = "Cherries"
mangoes = "Mangoes"
pineapples = "Pineapples"
papayas = "Papayas"
kiwifruits = "Kiwifruits"
passion_fruits = "Passion fruits"
lychees = "Lychees"
dragon_fruits = "Dragon fruits"
jackfruits = "Jackfruits"
star_fruits = "Star fruits"
watermelons = "Watermelons"
cantaloupes = "Cantaloupes"
honeydews = "Honeydews"
pears = "Pears"
cherries = "Cherries"
plums = "Plums"
figs = "Figs"
medjool_dates = "Medjool dates"
pomegranates = "Pomegranates"
bread_flour = "Bread flour"
bulgur = "Bulgur"
semolina = "Semolina"
white_rice = "White rice"
brown_rice = "Brown rice"
jasmine_rice = "Jasmine rice"
basmati_rice = "Basmati rice"
arborio_rice = "Arborio rice"
sushi_rice = "Sushi rice"
black_rice = "Black rice"
wild_rice = "Wild rice"
polenta = "Polenta"
corn_flour = "Corn flour"
pearl_barley = "Pearl barley"
oats = "Oats"
rye_flour = "Rye flour"
quinoa = "Quinoa"
buckwheat_flour = "Buckwheat flour"
soba_noodles = "Soba noodles"
spelt_flour = "Spelt flour"
lentils = "Lentils"
chickpeas = "Chickpeas"
black_beans = "Black beans"
kidney_beans = "Kidney beans"
pinto_beans = "Pinto beans"
cannellini_beans = "Cannellini beans"
dried_mung_beans = "Dried mung beans"
black_eyed_peas = "Black-eyed peas"
yellow_split_peas = "Yellow split peas"
edamame = "Edamame"
tofu = "Tofu"
lupini_beans = "Lupini beans"
almonds = "Almonds"
walnuts = "Walnuts"
cashews = "Cashews"
pistachios = "Pistachios"
pecans = "Pecans"
hazelnuts = "Hazelnuts"
macadamia_nuts = "Macadamia nuts"
brazil_nuts = "Brazil nuts"
pine_nuts = "Pine nuts"
peanuts = "Peanuts"
sunflower_seeds = "Sunflower seeds"
pumpkin_seeds = "Pumpkin seeds"
sesame_seeds = "Sesame seeds"
tahini = "Tahini"
whole_flax_seeds = "Whole flax seeds"
poppy_seeds = "Poppy seeds"
shredded_coconut = "Shredded coconut"
coconut_flakes = "Coconut flakes"
chestnuts = "Chestnuts"
basil = "Basil"
parsley = "Parsley"
coriander = "Coriander"
mint = "Mint"
thyme = "Thyme"
rosemary = "Rosemary"
sage = "Sage"
oregano = "Oregano"
dill = "Dill"
chives = "Chives"
bay_leaves = "Bay Leaves"
tarragon = "Tarragon"
marjoram = "Marjoram"
curry_leaves = "Curry Leaves"
cumin_seeds = "Cumin Seeds"
coriander_seeds = "Coriander Seeds"
fennel_seeds = "Fennel Seeds"
mustard_seeds = "Mustard Seeds"
fenugreek_seeds = "Fenugreek Seeds"
caraway_seeds = "Caraway Seeds"
celery_seeds = "Celery Seeds"
nigella_seeds = "Nigella Seeds"
cardamom_pods = "Cardamom Pods"
cloves = "Cloves"
cinnamon_sticks = "Cinnamon Sticks"
nutmeg = "Nutmeg"
allspice = "Allspice"
star_anise = "Star Anise"
saffron = "Saffron"
turmeric = "Turmeric"
ginger = "Ginger"
paprika = "Paprika"
cayenne_pepper = "Cayenne Pepper"
chilli_flakes = "Chilli Flakes"
black_pepper = "Black Pepper"
white_pepper = "White Pepper"
ground_cumin = "Ground Cumin"
ground_coriander = "Ground Coriander"
ground_ginger = "Ground Ginger"
ground_turmeric = "Ground Turmeric"
ground_cinnamon = "Ground Cinnamon"
ground_cloves = "Ground Cloves"
ground_nutmeg = "Ground Nutmeg"
ground_allspice = "Ground Allspice"
ground_cardamom = "Ground Cardamom"
ground_fenugreek = "Ground Fenugreek"
curry_powder = "Curry Powder"
garam_masala = "Garam Masala"
chinese_five_spice = "Chinese Five Spice"
zaatar = "Zaatar"
herbes_de_provence = "Herbes de Provence"
ras_el_hanout = "Ras el Hanout"
cajun_seasoning = "Cajun Seasoning"
dukkah = "Dukkah"
harissa = "Harissa"
sumac = "Sumac"
kaffir_lime_leaves = "Kaffir Lime Leaves"
lemongrass = "Lemongrass"
vanilla_bean = "Vanilla Bean"
olive_oil = "Olive oil"
coconut_oil = "Coconut oil"
rapeseed_oil = "Rapeseed Oil"
sunflower_oil = "Sunflower oil"
peanut_oil = "Peanut Oil"
sesame_oil = "Sesame oil"
grapeseed_oil = "Grapeseed Oil"
unsalted_butter = "Unsalted butter"
salted_butter = "Salted butter"
duck_fat = "Duck Fat"
goose_fat = "Goose Fat"
margarine = "Margarine"
castor_sugar = "Castor Sugar"
granulated_sugar = "Granulated Sugar"
brown_sugar = "Brown Sugar"
icing_sugar = "Icing Sugar"
demerara_sugar = "Demerara Sugar"
muscovado_sugar = "Muscovado Sugar"
coconut_sugar = "Coconut Sugar"
maple_syrup = "Maple Syrup"
honey = "Honey"
agave_syrup = "Agave Syrup"
molasses = "Molasses"
corn_syrup = "Corn Syrup"
ketchup = "Ketchup"
dijon_mustard = "Dijon mustard"
whole_grain_mustard = "Whole grain mustard"
mayonnaise = "Mayonnaise"
tabasco = "Tabasco"
sriracha = "Sriracha"
soy_sauce = "Soy Sauce"
worcestershire_sauce = "Worcestershire Sauce"
fish_sauce = "Fish Sauce"
hoisin_sauce = "Hoisin Sauce"
oyster_sauce = "Oyster Sauce"
teriyaki_sauce = "Teriyaki Sauce"
sweet_chili_sauce = "Sweet Chili Sauce"
gochujang = "Gochujang"
miso_paste = "Miso Paste"
pickles = "Pickles"
burger_sauce = "Burger Sauce"
plain_flour = "Plain Flour"
dark_chocolate_70_percent = "Dark Chocolate (70%)"
milk_chocolate = "Milk Chocolate"
white_chocolate = "White Chocolate"
chocolate_chips = "Chocolate Chips"
baking_powder = "Baking Powder"
baking_soda = "Baking Soda"
salt = "Salt"
vanilla_extract = "Vanilla Extract"
yeast = "Yeast"
cornstarch = "Cornstarch"
cocoa_powder = "Cocoa Powder"
panko_bread_crumbs = "Panko Bread Crumbs"
canned_tomatoes = "Canned Tomatoes"
tomato_paste = "Tomato Paste"
chicken_stock = "Chicken Stock"
beef_stock = "Beef Stock"
vegetable_stock = "Vegetable Stock"
white_vinegar = "White Vinegar"
apple_cider_vinegar = "Apple Cider Vinegar"
balsamic_vinegar = "Balsamic Vinegar"
worcestershire_sauce = "Worcestershire Sauce"
gelatin = "Gelatin"
white_wine = "White Wine"
red_wine = "Red Wine"
rice_vinegar = "Rice Vinegar"
mirin = "Mirin"
agar_agar = "Agar Agar"
coffee = "Coffee"
tea = "Tea"
water = "Water"
almond_milk = "Almond Milk"
soy_milk = "Soy Milk"
oat_milk = "Oat Milk"
coconut_milk = "Coconut Milk"
ale = "Ale"
stout = "Stout"
vodka = "Vodka"
rum = "Rum"
whiskey = "Whiskey"
gin = "Gin"
tequila = "Tequila"
spaghetti = "Spaghetti"
linguine = "Linguine"
fettuccine = "Fettuccine"
tagliatelle = "Tagliatelle"
penne = "Penne"
rigatoni = "Rigatoni"
fusilli = "Fusilli"
ravioli = "Ravioli"
tortellini = "Tortellini"
gnocchi = "Gnocchi"
orzo = "Orzo"
cannelloni = "Cannelloni"
pappardelle = "Pappardelle"
truffle_oil = "Truffle Oil"
saffron_threads = "Saffron Threads"
edible_gold_leaf = "Edible Gold Leaf"
rose_water = "Rose Water"
xanthan_gum = "Xanthan Gum"
guar_gum = "Guar Gum"
arrowroot_powder = "Arrowroot Powder"
cream_of_tartar = "Cream of Tartar"
yeast = "Yeast"
wasabi_paste = "Wasabi Paste"
nori_sheets = "Nori sheets"
brioche_bun = "Brioche Bun"
creme_fraiche = "Creme Fraiche"
almond_butter = "Almond Butter"
chia_seeds = "Chia Seeds"
cornichon = "Cornichon"
watercress = "Watercress"
english_mustard = "English Mustard"
whole_meal_flour = "Whole Meal Flour"
treacle = "Treacle"
capers = "Capers"
red_wine_vinegar = "Red Wine Vinegar"
white_wine_vinegar = "White Wine Vinegar"
fresh_chilli = "Fresh Chilli"
sherry_vinegar = "Sherry Vinegar"
mustard_powder = "Mustard Powder"
lamb_fat = "Lamb Fat"
golden_syrup = "Golden Syrup"
lager_beer = "Lager Beer"
flour_00 = "00 Flour"
spring_onion = "Spring Onion"
kohl_rabi = "Kohl Rabi"
fennel = "Fennel"
tomatoes = "Tomatoes"
beetroot = "Beetroot"
bomba_rice = "Bomba Rice"
fish_stock = "Fish Stock"
chesnut_mushrooms = "Chesnut Mushrooms"
english_muffin = "English Muffin"
ham = "Ham"
chipolatas = "Chipolatas"
langoustines = "Langoustines"

ingredients = [
  { name: "Langoustines" },
  { name: "Chipolatas" },
  { name: "Ham" },
  { name: "English Muffin" },
  { name: "Chesnut Mushrooms" },
  { name: "Fish Stock" },
  { name: "Bomba Rice" },
  { name: "White Wine Vinegar" },
  { name: "Tomatoes" },
  { name: "Fennel" },
  { name: "Kohl Rabi" },
  { name: "Spring Onion" },
  { name: "00 Flour" },
  { name: "Lager Beer" },
  { name: "Golden Syrup" },
  { name: "Lamb Fat" },
  { name: "Mustard Powder" },
  { name: "Sherry Vinegar" },
  { name: "Fresh Chilli" },
  { name: "Red Wine Vinegar" },
  { name: "Sirloin" },
  { name: "Ribeye" },
  { name: "Fillet steak" },
  { name: "Flank steak" },
  { name: "Chuck roast" },
  { name: "Brisket" },
  { name: "Short ribs" },
  { name: "Ground beef" },
  { name: "Pork chops" },
  { name: "Pork tenderloin" },
  { name: "Pork belly" },
  { name: "Spare ribs" },
  { name: "Pork shoulder" },
  { name: "Gammon" },
  { name: "Bacon" },
  { name: "Ground pork" },
  { name: "Lamb chops" },
  { name: "Leg of lamb" },
  { name: "Lamb shoulder" },
  { name: "Lamb shank" },
  { name: "Ground lamb" },
  { name: "Veal chops" },
  { name: "Veal tenderloin" },
  { name: "Ground veal" },
  { name: "Chicken breast" },
  { name: "Chicken thighs" },
  { name: "Chicken drumsticks" },
  { name: "Whole chicken" },
  { name: "Duck breast" },
  { name: "Duck legs" },
  { name: "Turkey breast" },
  { name: "Turkey legs" },
  { name: "Ground chicken" },
  { name: "Ground turkey" },
  { name: "Venison" },
  { name: "Rabbit" },
  { name: "Pheasant" },
  { name: "Quail" },
  { name: "Pork sausages" },
  { name: "Chicken Sausages" },
  { name: "Hot dogs" },
  { name: "Salami" },
  { name: "Pepperoni" },
  { name: "Pastrami" },
  { name: "Salmon" },
  { name: "Tuna" },
  { name: "Cod" },
  { name: "Mahi Mahi" },
  { name: "Halibut" },
  { name: "Trout" },
  { name: "Snapper" },
  { name: "Mackerel" },
  { name: "Swordfish" },
  { name: "Haddock" },
  { name: "Sea Bass" },
  { name: "Perch" },
  { name: "Sole" },
  { name: "Anchovies" },
  { name: "Eel" },
  { name: "Wahoo" },
  { name: "Lobster" },
  { name: "Crab" },
  { name: "Prawns" },
  { name: "Clams" },
  { name: "Mussels" },
  { name: "Oysters" },
  { name: "Scallops" },
  { name: "Conch" },
  { name: "Octopus" },
  { name: "Squid" },
  { name: "Caviar" },
  { name: "Milk" },
  { name: "Unsalted butter" },
  { name: "Salted butter" },
  { name: "Plain yogurt" },
  { name: "Greek yogurt" },
  { name: "Cheddar" },
  { name: "Mozzarella" },
  { name: "Swiss" },
  { name: "Feta" },
  { name: "Parmesan" },
  { name: "Brie" },
  { name: "Blue cheese" },
  { name: "Goat cheese" },
  { name: "Heavy cream" },
  { name: "Whipping cream" },
  { name: "Sour cream" },
  { name: "Cottage Cheese" },
  { name: "Ricotta Cheese" },
  { name: "Mascarpone Cheese" },
  { name: "Cream Cheese" },
  { name: "Buttermilk" },
  { name: "Condensed Milk" },
  { name: "Ghee" },
  { name: "Crème Fraîche" },
  { name: "Egg whites" },
  { name: "Egg yolks" },
  { name: "Whole Eggs" },
  { name: "Russet potatoes" },
  { name: "Maris Piper Potatoes" },
  { name: "Red potatoes" },
  { name: "Sweet potatoes" },
  { name: "New potatoes" },
  { name: "White onions" },
  { name: "Red onions" },
  { name: "Yellow onions" },
  { name: "Shallots" },
  { name: "Green onions" },
  { name: "Leeks" },
  { name: "Garlic" },
  { name: "Beef tomatoes" },
  { name: "Cherry tomatoes" },
  { name: "Carrots" },
  { name: "Green bell peppers" },
  { name: "Red bell peppers" },
  { name: "Yellow bell peppers" },
  { name: "Orange bell peppers" },
  { name: "Iceberg lettuce" },
  { name: "Romaine lettuce" },
  { name: "Rocket" },
  { name: "Baby spinach" },
  { name: "Broccoli" },
  { name: "Tenderstem" },
  { name: "White cauliflower" },
  { name: "Green cabbage" },
  { name: "Red cabbage" },
  { name: "Savoy cabbage" },
  { name: "Chinese cabbage" },
  { name: "Aubergine" },
  { name: "Courgette" },
  { name: "Button mushrooms" },
  { name: "Cremini mushrooms" },
  { name: "Portobello mushrooms" },
  { name: "Shiitake mushrooms" },
  { name: "Oyster mushrooms" },
  { name: "Chanterelle mushrooms" },
  { name: "Porcini mushrooms" },
  { name: "Green Beans" },
  { name: "Green peas" },
  { name: "Snow peas" },
  { name: "Snap peas" },
  { name: "Corn on the cob" },
  { name: "Sweet corn" },
  { name: "Baby corn" },
  { name: "Red radishes" },
  { name: "Daikon radishes" },
  { name: "Celery" },
  { name: "Cucumbers" },
  { name: "Avocado" },
  { name: "Pumpkins" },
  { name: "Butternut squash" },
  { name: "Spaghetti squash" },
  { name: "Asparagus" },
  { name: "Kale" },
  { name: "Apples" },
  { name: "Granny Smith apples" },
  { name: "Pink Lady apples" },
  { name: "Bananas" },
  { name: "Plantains" },
  { name: "Oranges" },
  { name: "Clementines" },
  { name: "Satsumas" },
  { name: "Tangerines" },
  { name: "Red grapes" },
  { name: "Green grapes" },
  { name: "Black grapes" },
  { name: "Strawberries" },
  { name: "Blueberries" },
  { name: "Raspberries" },
  { name: "Blackberries" },
  { name: "Cranberries" },
  { name: "Goji berries" },
  { name: "Lemons" },
  { name: "Limes" },
  { name: "Grapefruits" },
  { name: "Peaches" },
  { name: "Nectarines" },
  { name: "Plums" },
  { name: "Apricots" },
  { name: "Cherries" },
  { name: "Mangoes" },
  { name: "Pineapples" },
  { name: "Papayas" },
  { name: "Kiwifruits" },
  { name: "Passion fruits" },
  { name: "Lychees" },
  { name: "Dragon fruits" },
  { name: "Jackfruits" },
  { name: "Star fruits" },
  { name: "Watermelons" },
  { name: "Cantaloupes" },
  { name: "Honeydews" },
  { name: "Pears" },
  { name: "Cherries" },
  { name: "Plums" },
  { name: "Figs" },
  { name: "Medjool dates" },
  { name: "Pomegranates" },
  { name: "Bread flour" },
  { name: "Bulgur" },
  { name: "Semolina" },
  { name: "White rice" },
  { name: "Brown rice" },
  { name: "Jasmine rice" },
  { name: "Basmati rice" },
  { name: "Arborio rice" },
  { name: "Sushi rice" },
  { name: "Black rice" },
  { name: "Wild rice" },
  { name: "Polenta" },
  { name: "Corn flour" },
  { name: "Pearl barley" },
  { name: "Oats" },
  { name: "Rye flour" },
  { name: "Quinoa" },
  { name: "Buckwheat flour" },
  { name: "Soba noodles" },
  { name: "Spelt flour" },
  { name: "Lentils" },
  { name: "Chickpeas" },
  { name: "Black beans" },
  { name: "Kidney beans" },
  { name: "Pinto beans" },
  { name: "Cannellini beans" },
  { name: "Dried mung beans" },
  { name: "Black-eyed peas" },
  { name: "Yellow split peas" },
  { name: "Edamame" },
  { name: "Tofu" },
  { name: "Lupini beans" },
  { name: "Almonds" },
  { name: "Walnuts" },
  { name: "Cashews" },
  { name: "Pistachios" },
  { name: "Pecans" },
  { name: "Hazelnuts" },
  { name: "Macadamia nuts" },
  { name: "Brazil nuts" },
  { name: "Pine nuts" },
  { name: "Peanuts" },
  { name: "Sunflower seeds" },
  { name: "Pumpkin seeds" },
  { name: "Sesame seeds" },
  { name: "Tahini" },
  { name: "Whole flax seeds" },
  { name: "Poppy seeds" },
  { name: "Shredded coconut" },
  { name: "Coconut flakes" },
  { name: "Chestnuts" },
  { name: "Basil" },
  { name: "Parsley" },
  { name: "Coriander" },
  { name: "Mint" },
  { name: "Thyme" },
  { name: "Rosemary" },
  { name: "Sage" },
  { name: "Oregano" },
  { name: "Dill" },
  { name: "Chives" },
  { name: "Bay Leaves" },
  { name: "Tarragon" },
  { name: "Marjoram" },
  { name: "Curry Leaves" },
  { name: "Cumin Seeds" },
  { name: "Coriander Seeds" },
  { name: "Fennel Seeds" },
  { name: "Mustard Seeds" },
  { name: "Fenugreek Seeds" },
  { name: "Caraway Seeds" },
  { name: "Celery Seeds" },
  { name: "Nigella Seeds" },
  { name: "Cardamom Pods" },
  { name: "Cloves" },
  { name: "Cinnamon Sticks" },
  { name: "Nutmeg" },
  { name: "Allspice" },
  { name: "Star Anise" },
  { name: "Saffron" },
  { name: "Turmeric" },
  { name: "Ginger" },
  { name: "Paprika" },
  { name: "Cayenne Pepper" },
  { name: "Chilli Flakes" },
  { name: "Black Pepper" },
  { name: "White Pepper" },
  { name: "Ground Cumin" },
  { name: "Ground Coriander" },
  { name: "Ground Ginger" },
  { name: "Ground Turmeric" },
  { name: "Ground Cinnamon" },
  { name: "Ground Cloves" },
  { name: "Ground Nutmeg" },
  { name: "Ground Allspice" },
  { name: "Ground Cardamom" },
  { name: "Ground Fenugreek" },
  { name: "Curry Powder" },
  { name: "Garam Masala" },
  { name: "Chinese Five Spice" },
  { name: "Zaatar" },
  { name: "Herbes de Provence" },
  { name: "Ras el Hanout" },
  { name: "Cajun Seasoning" },
  { name: "Dukkah" },
  { name: "Harissa" },
  { name: "Sumac" },
  { name: "Kaffir Lime Leaves" },
  { name: "Lemongrass" },
  { name: "Vanilla Bean" },
  { name: "Olive oil" },
  { name: "Coconut oil" },
  { name: "Rapeseed Oil" },
  { name: "Sunflower oil" },
  { name: "Peanut Oil" },
  { name: "Sesame oil" },
  { name: "Grapeseed Oil" },
  { name: "Unsalted butter" },
  { name: "Salted butter" },
  { name: "Duck Fat" },
  { name: "Goose Fat" },
  { name: "Margarine" },
  { name: "Castor Sugar" },
  { name: "Granulated Sugar" },
  { name: "Brown Sugar" },
  { name: "Icing Sugar" },
  { name: "Demerara Sugar" },
  { name: "Muscovado Sugar" },
  { name: "Coconut Sugar" },
  { name: "Maple Syrup" },
  { name: "Honey" },
  { name: "Agave Syrup" },
  { name: "Molasses" },
  { name: "Corn Syrup" },
  { name: "Ketchup" },
  { name: "Dijon mustard" },
  { name: "Whole grain mustard" },
  { name: "Mayonnaise" },
  { name: "Tabasco" },
  { name: "Sriracha" },
  { name: "Soy Sauce" },
  { name: "Worcestershire Sauce" },
  { name: "Fish Sauce" },
  { name: "Hoisin Sauce" },
  { name: "Oyster Sauce" },
  { name: "Teriyaki Sauce" },
  { name: "Sweet Chili Sauce" },
  { name: "Gochujang" },
  { name: "Miso Paste" },
  { name: "Pickles" },
  { name: "Burger Sauce" },
  { name: "Plain Flour" },
  { name: "Dark Chocolate (70%)" },
  { name: "Milk Chocolate" },
  { name: "White Chocolate" },
  { name: "Chocolate Chips" },
  { name: "Baking Powder" },
  { name: "Baking Soda" },
  { name: "Salt" },
  { name: "Vanilla Extract" },
  { name: "Yeast" },
  { name: "Cornstarch" },
  { name: "Cocoa Powder" },
  { name: "Panko Bread Crumbs" },
  { name: "Canned Tomatoes" },
  { name: "Tomato Paste" },
  { name: "Chicken Stock" },
  { name: "Beef Stock" },
  { name: "Vegetable Stock" },
  { name: "White Vinegar" },
  { name: "Apple Cider Vinegar" },
  { name: "Balsamic Vinegar" },
  { name: "Worcestershire Sauce" },
  { name: "Gelatin" },
  { name: "White Wine" },
  { name: "Red Wine" },
  { name: "Rice Vinegar" },
  { name: "Mirin" },
  { name: "Agar Agar" },
  { name: "Coffee" },
  { name: "Tea" },
  { name: "Water" },
  { name: "Almond Milk" },
  { name: "Soy Milk" },
  { name: "Oat Milk" },
  { name: "Coconut Milk" },
  { name: "Ale" },
  { name: "Stout" },
  { name: "Vodka" },
  { name: "Rum" },
  { name: "Whiskey" },
  { name: "Gin" },
  { name: "Tequila" },
  { name: "Spaghetti" },
  { name: "Linguine" },
  { name: "Fettuccine" },
  { name: "Tagliatelle" },
  { name: "Penne" },
  { name: "Rigatoni" },
  { name: "Fusilli" },
  { name: "Ravioli" },
  { name: "Tortellini" },
  { name: "Gnocchi" },
  { name: "Orzo" },
  { name: "Cannelloni" },
  { name: "Pappardelle" },
  { name: "Truffle Oil" },
  { name: "Saffron Threads" },
  { name: "Edible Gold Leaf" },
  { name: "Rose Water" },
  { name: "Xanthan Gum" },
  { name: "Guar Gum" },
  { name: "Arrowroot Powder" },
  { name: "Cream of Tartar" },
  { name: "Yeast" },
  { name: "Wasabi Paste" },
  { name: "Nori sheets" },
  { name: "Brioche Bun" },
  { name: "Creme Fraiche" },
  { name: "Dried Cranberries" },
  { name: "Raisins" },
  { name: "Dried Apricot" },
  { name: "Almond Butter" },
  { name: "Chia Seeds" },
  { name: "Cornichon" },
  { name: "Watercress" },
  { name: "English Mustard" },
  { name: "Whole Meal Flour" },
  { name: "Treacle" },
  { name: "Capers" }
]

ingredients.each do |ingredient|
  Ingredient.create!(name: ingredient[:name])
end

puts "Created ingredients"
puts "creating Recipes"
#Building Recipes:



# Meal type options:
breakfast = "Breakfast"
lunch = "Lunch"
dinner = "Dinner"
snack = "Snack"

# Define recipes and their associated ingredients
recipes_with_data = [
  # { # Template
  #   recipe_data: {
  #     user_id: admin.id,
  #     name: "Template",
  #     description: "",
  #     instructions: "",
  #     prep_time: 0,
  #     cook_time: 0,
  #     meal_type: [""],
  #     included_recipes: [""]
  #   },
  #   ingredients: [
  #     { ingredient: , quantity: 0, unit_of_measure: "g" },
  #   ],
  #   tags: [
  #     { name: "" },
  #     { name: "" }
  #   ],
  #   photo: default_photo
  # },
  { # Smash burgers
    recipe_data: {
      user_id: admin.id,
      name: "Smash Burgers",
      description: "Dirty, salty, fatty, but tasty af",
      instructions: "Combine melted butter, salt, and beef. Ball up into equal size and refrigerate. When ready to fry, 'smash' the patty and fry on a high heat. Serve immediately with plenty burger sauce in a toasted bun.",
      prep_time: 10,
      cook_time: 10,
      meal_type: [],
      included_recipes: ["Potato Burger Buns", "Homemade Chips", "Burger Sauce"]
    },
    ingredients: [
      { ingredient: ground_beef, quantity: 100, unit_of_measure: "g" },
      { ingredient: unsalted_butter, quantity: 20, unit_of_measure: "g" },
      { ingredient: salt, quantity: 1, unit_of_measure: "pinch" },
      { ingredient: paprika, quantity: 1, unit_of_measure: "pinch" },
      { ingredient: brioche_bun, quantity: 1, unit_of_measure: "" },
      { ingredient: burger_sauce, quantity: 25, unit_of_measure: "g" }
    ],
    tags: [
      { name: "Main" },
      { name: "American" }
    ]
  },
  { # Homemade chips
    recipe_data: {
      user_id: admin.id,
      name: "Homemade Chips",
      description: "Crispy, golden slices of freshly fried potatoes",
      instructions: "Peel, and slice into thick 1.5cm chips. part boil in salty water until just soft (~8mins), drain and allow to steam dry. Fry in oil @120 degrees for 10 mins. To finish, fry @ 180 degrees until golden. Season with salt",
      prep_time: 10,
      cook_time: 30,
      meal_type: [snack],
      included_recipes: [""]
    },
    ingredients: [
      { ingredient: maris_piper_potatoes, quantity: 100, unit_of_measure: "g" },
    ],
    tags: [
      { name: "Side" },
      { name: "Component" },
      { name: "Snack" },
      { name: "American" }
    ]
  },
  { # Julios Banana bread
    recipe_data: {
      user_id: admin.id,
      name: "Julios Banana Bread",
      description: "Moist, flavourful recipe, bursting with banana goodness",
      instructions: "Mix dry ingredients together, smash ripe bananas and add other wet ingredients. Combine the two and bake until cooked through @ 170 degrees fan",
      prep_time: 10,
      cook_time: 30,
      meal_type: [snack],
      included_recipes: [""]
    },
    ingredients: [
      { ingredient: plain_flour, quantity: 1.75, unit_of_measure: "cup" },
      { ingredient: baking_soda, quantity: 1.5, unit_of_measure: "tsp" },
      { ingredient: salt, quantity: 0.75, unit_of_measure: "pinch" },
      { ingredient: castor_sugar, quantity: 1.5, unit_of_measure: "cup" },
      { ingredient: whole_eggs, quantity: 3, unit_of_measure: "" },
      { ingredient: sunflower_oil, quantity: 0.75, unit_of_measure: "cup" },
      { ingredient: bananas, quantity: 1, unit_of_measure: "cup" },
    ],
    tags: [
      { name: "Baked Goods" },
      { name: "Component" },
      { name: "Snack" },
      { name: "European" }
    ]
  },
  { # Chocolate brownie
    recipe_data: {
      user_id: admin.id,
      name: "Chocolate Brownie",
      description: "A decadent, fudgy delight, rich with cocoa",
      instructions: "Whisk eggs with sugar until pale yellow. Melt butter and chocolate and fold into egg mix. Bake at 170 (Longer cooking will result in a more cakey mixture, less cooking will be gooey).",
      prep_time: 10,
      cook_time: 25,
      meal_type: [snack],
      included_recipes: [""]
    },
    ingredients: [
      { ingredient: whole_eggs, quantity: 10, unit_of_measure: "" },
      { ingredient: castor_sugar, quantity: 600, unit_of_measure: "g" },
      { ingredient: dark_chocolate_70_percent, quantity: 710, unit_of_measure: "g" },
      { ingredient: milk_chocolate, quantity: 200, unit_of_measure: "g" },
      { ingredient: unsalted_butter, quantity: 340, unit_of_measure: "g" },
    ],
    tags: [
      { name: "Baked Goods" },
      { name: "Component" },
      { name: "Snack" },
      { name: "European" }
    ]
  },
  { # Nutty chocolate brownie
    recipe_data: {
      user_id: admin.id,
      name: "Nutty Chocolate Brownie",
      description: "A decadent, fudgy delight, rich with cocoa and studded with melty chocolate chips and nuts.",
      instructions: "Beat eggs and sugar together until pale yellow. Add rest of dry ingredients. Melt chocolate and butter together. Combine two mixes. Fold in chopped chocolate and nuts and pour into lined tin. Bake at 170 degrees until cooked",
      prep_time: 15,
      cook_time: 25,
      meal_type: [snack],
      included_recipes: [""]
    },
    ingredients: [
      { ingredient: whole_eggs, quantity: 6, unit_of_measure: "" },
      { ingredient: castor_sugar, quantity: 300, unit_of_measure: "g" },
      { ingredient: unsalted_butter, quantity: 375, unit_of_measure: "g" },
      { ingredient: dark_chocolate_70_percent, quantity: 375, unit_of_measure: "g" },
      { ingredient: baking_powder, quantity: 200, unit_of_measure: "g" },
      { ingredient: plain_flour, quantity: 225, unit_of_measure: "g" },
      { ingredient: salt, quantity: 10, unit_of_measure: "g" },
      { ingredient: walnuts, quantity: 300, unit_of_measure: "g" },
      { ingredient: hazelnuts, quantity: 200, unit_of_measure: "g" },
      { ingredient: dark_chocolate_70_percent, quantity: 170, unit_of_measure: "g" },
      { ingredient: milk_chocolate, quantity: 320, unit_of_measure: "g" },
      { ingredient: white_chocolate, quantity: 220, unit_of_measure: "g" },
    ],
    tags: [
      { name: "Baked Goods" },
      { name: "Component" },
      { name: "Snack" },
      { name: "European" }
    ]
  },
  { # Banana bread
    recipe_data: {
      user_id: admin.id,
      name: "Banana Bread",
      description: "A moist and flavorful loaf made with ripe bananas",
      instructions: "Mix together flour, baking powder/soda, and salt. Cream butter and sugar, add eggs and vanilla. Add half flour until well combined, then add other half. Add banana and creme fraiche. Bake at 170.",
      prep_time: 10,
      cook_time: 35,
      meal_type: [snack, breakfast],
      included_recipes: [""]
    },
    ingredients: [
      { ingredient: plain_flour, quantity: 170, unit_of_measure: "g" },
      { ingredient: baking_powder, quantity: 3, unit_of_measure: "g" },
      { ingredient: baking_soda, quantity: 3, unit_of_measure: "g" },
      { ingredient: salt, quantity: 4, unit_of_measure: "g" },
      { ingredient: unsalted_butter, quantity: 120, unit_of_measure: "g" },
      { ingredient: brown_sugar, quantity: 140, unit_of_measure: "g" },
      { ingredient: whole_eggs, quantity: 80, unit_of_measure: "g" },
      { ingredient: creme_fraiche, quantity: 24, unit_of_measure: "g" },
      { ingredient: bananas, quantity: 250, unit_of_measure: "g" }
    ],
    tags: [
      { name: "Baked Goods" },
      { name: "Component" },
      { name: "Snack" },
      { name: "European" }
    ]
  },
  { # Granola
    recipe_data: {
      user_id: admin.id,
      name: "Granola",
      description: "A crunchy, wholesome mix of oats, nuts, seeds, and fruits.",
      instructions: "Bring honey, salt, maple syrup, and oil to the boil. Pour over mixed dry ingredients (EXCEPT DRIED FRUIT!!). Mix well and cook in 160 dc oven, stir every 15 mins until cooked. Leave to cool and stir in dried fruit.",
      prep_time: 10,
      cook_time: 40,
      meal_type: [breakfast],
      included_recipes: [""]
    },
    ingredients: [
      { ingredient: honey, quantity: 175, unit_of_measure: "g" },
      { ingredient: maple_syrup, quantity: 175, unit_of_measure: "g" },
      { ingredient: sunflower_oil, quantity: 160, unit_of_measure: "g" },
      { ingredient: salt, quantity: 20, unit_of_measure: "g" },
      { ingredient: oats, quantity: 1, unit_of_measure: "kg" },
      { ingredient: almonds, quantity: 240, unit_of_measure: "g" },
      { ingredient: brazil_nuts, quantity: 160, unit_of_measure: "g" },
      { ingredient: cashews, quantity: 160, unit_of_measure: "g" },
      { ingredient: sunflower_seeds, quantity: 240, unit_of_measure: "g" },
      { ingredient: pumpkin_seeds, quantity: 240, unit_of_measure: "g" },
      { ingredient: dried_cranberries, quantity: 240, unit_of_measure: "g" },
      { ingredient: raisins, quantity: 240, unit_of_measure: "g" },
      { ingredient: dried_apricot, quantity: 240, unit_of_measure: "g" }
    ],
    tags: [
      { name: "Baked Goods" },
      { name: "Component" },
      { name: "Snack" },
      { name: "European" }
    ]
  },
  { # Granola Bar
    recipe_data: {
      user_id: admin.id,
      name: "Granola Bar",
      description: "Pumpkin seed and almond granola bar. A chewy, healthy snack.",
      instructions: "Blend pitted dates, almond butter, maple syrup until smooth. Chop nuts, blend chia seeds and mix with all other ingredients. Combine altogether with a splash of water. Bake in lined tray at 180.",
      prep_time: 10,
      cook_time: 40,
      meal_type: [snack, breakfast],
      included_recipes: [""]
    },
    ingredients: [
      { ingredient: oats, quantity: 160, unit_of_measure: "g" },
      { ingredient: raisins, quantity: 130, unit_of_measure: "g" },
      { ingredient: almonds, quantity: 80, unit_of_measure: "g" },
      { ingredient: maple_syrup, quantity: 125, unit_of_measure: "ml" },
      { ingredient: sunflower_seeds, quantity: 265, unit_of_measure: "g" },
      { ingredient: pumpkin_seeds, quantity: 65, unit_of_measure: "g" },
      { ingredient: almond_butter, quantity: 2, unit_of_measure: "tbsp" },
      { ingredient: ground_cinnamon, quantity: 2, unit_of_measure: "tsp" },
      { ingredient: chia_seeds, quantity: 2.5, unit_of_measure: "tbsp" },
      { ingredient: medjool_dates, quantity: 6, unit_of_measure: "" },
      { ingredient: salt, quantity: 1, unit_of_measure: "pinch" }
    ],
    tags: [
      { name: "Baked Goods" },
      { name: "Component" },
      { name: "Snack" },
      { name: "European" }
    ]
  },
  { # Dukkah
    recipe_data: {
      user_id: admin.id,
      name: "Dukkah",
      description: "A spice blend to use on mediterranean dishes",
      instructions: "Lightly crush almonds and hazelnuts in pestel and mortar. Toast spices. Mix all together.",
      prep_time: 5,
      cook_time: 10,
      meal_type: [],
      included_recipes: [""]
    },
    ingredients: [
      { ingredient: almonds, quantity: 150, unit_of_measure: "g" },
      { ingredient: hazelnuts, quantity: 150, unit_of_measure: "g" },
      { ingredient: sesame_seeds, quantity: 50, unit_of_measure: "g" },
      { ingredient: coriander_seeds, quantity: 25, unit_of_measure: "g" },
      { ingredient: cumin_seeds, quantity: 25, unit_of_measure: "g" },
      { ingredient: salt, quantity: 10, unit_of_measure: "g" },
      { ingredient: black_pepper, quantity: 10, unit_of_measure: "g" },
      { ingredient: thyme, quantity: 10, unit_of_measure: "g" }
    ],
    tags: [
      { name: "Component" },
      { name: "Snack" },
      { name: "European" },
      { name: "Mediterranean" }
    ]
  },
  { # Caeser Dressing
    recipe_data: {
      user_id: admin.id,
      name: "Caeser Dressing",
      description: "A creamy, tangy blend of mayonnaise, anchovies, garlic, lemon juice, and Parmesan cheese, perfect for elevating salads and sandwiches.",
      instructions: "Add all ingredients except parmesan and oil into a blender. Blend until smooth. Then very gradually add the oil with blender spinning. Add grated parmesan to finish.",
      prep_time: 5,
      cook_time: 0,
      meal_type: [],
      included_recipes: [""]
    },
    ingredients: [
      { ingredient: egg_yolks, quantity: 75, unit_of_measure: "g" },
      { ingredient: sunflower_oil, quantity: 300, unit_of_measure: "ml" },
      { ingredient: white_vinegar, quantity: 40, unit_of_measure: "g" },
      { ingredient: worcestershire_sauce, quantity: 20, unit_of_measure: "g" },
      { ingredient: tabasco, quantity: 6, unit_of_measure: "drops" },
      { ingredient: garlic, quantity: 2, unit_of_measure: "cloves" },
      { ingredient: anchovies, quantity: 2, unit_of_measure: "" },
      { ingredient: parmesan, quantity: 50, unit_of_measure: "g" }
    ],
    tags: [
      { name: "Component" },
      { name: "European" },
      { name: "Mediterranean" },
      { name: "American" }
    ]
  },
  { # Burger Sauce
    recipe_data: {
      user_id: admin.id,
      name: "Burger Sauce",
      description: "The perfect accompaniment to a juicy burger.",
      instructions: "Bruniose the shallot, finely chop herbs and mix.",
      prep_time: 5,
      cook_time: 0,
      meal_type: [],
      included_recipes: [""]
    },
    ingredients: [
      { ingredient: ketchup, quantity: 300, unit_of_measure: "g" },
      { ingredient: mayonnaise, quantity: 200, unit_of_measure: "g" },
      { ingredient: dijon_mustard, quantity: 200, unit_of_measure: "g" },
      { ingredient: tarragon, quantity: 1, unit_of_measure: "bunch" },
      { ingredient: chives, quantity: 1, unit_of_measure: "bunch" },
      { ingredient: shallots, quantity: 100, unit_of_measure: "g" }
    ],
    tags: [
      { name: "Component" },
      { name: "American" }
    ]
  },
  { # Rarebit
    recipe_data: {
      user_id: admin.id,
      name: "Rarebit",
      description: "Cheese on toast but boujie",
      instructions: "Melt butter and flour, gradually add ale and cook gently. add mustard, cayenne and worcestershire. Cool slightly, grate in nutmeg and fold in cheese.",
      prep_time: 10,
      cook_time: 20,
      meal_type: [snack],
      included_recipes: [""]
    },
    ingredients: [
      { ingredient: plain_flour, quantity: 60, unit_of_measure: "g" },
      { ingredient: unsalted_butter, quantity: 40, unit_of_measure: "g" },
      { ingredient: dijon_mustard, quantity: 25, unit_of_measure: "g" },
      { ingredient: ale, quantity: 200, unit_of_measure: "ml" },
      { ingredient: worcestershire_sauce, quantity: 30, unit_of_measure: "ml" },
      { ingredient: cayenne_pepper, quantity: 5, unit_of_measure: "g" },
      { ingredient: nutmeg, quantity: 0.5, unit_of_measure: "" },
      { ingredient: cheddar, quantity: 450, unit_of_measure: "g" }
    ],
    tags: [
      { name: "Component" },
      { name: "European" },
      { name: "Snack" },
      { name: "Small Plate" }
    ]
  },
  { # Tartar Sauce
    recipe_data: {
      user_id: admin.id,
      name: "Tartar Sauce",
      description: "Fish with this is banging",
      instructions: "Brunoise shallot and salt for 10 mins. Finelly chop cornichon, capers, tarragon and chervil/chives. Mix altogether.",
      prep_time: 10,
      cook_time: 0,
      meal_type: [],
      included_recipes: [""]
    },
    ingredients: [
      { ingredient: mayonnaise, quantity: 500, unit_of_measure: "g" },
      { ingredient: creme_fraiche, quantity: 150, unit_of_measure: "g" },
      { ingredient: cornichon, quantity: 100, unit_of_measure: "g" },
      { ingredient: capers, quantity: 100, unit_of_measure: "g" },
      { ingredient: shallots, quantity: 30, unit_of_measure: "g" },
      { ingredient: tarragon, quantity: 1, unit_of_measure: "bunch" },
      { ingredient: chives, quantity: 1, unit_of_measure: "bunch" }
    ],
    tags: [
      { name: "Component" },
      { name: "European" }
    ]
  },
  { # Spring Salsa Sauce
    recipe_data: {
      user_id: admin.id,
      name: "Spring Salsa Sauce",
      description: "A light, fresh sauce that goes well with Lamb and Fish",
      instructions: "Add herbs, capers, mustard, vinegar to a blender and blend. Slowly add oil to create an emulsion. Fold through brunoise shallot and apple.",
      prep_time: 10,
      cook_time: 0,
      meal_type: [],
      included_recipes: [""]
    },
    ingredients: [
      { ingredient: watercress, quantity: 30, unit_of_measure: "g" },
      { ingredient: tarragon, quantity: 10, unit_of_measure: "g" },
      { ingredient: parsley, quantity: 10, unit_of_measure: "g" },
      { ingredient: capers, quantity: 20, unit_of_measure: "g" },
      { ingredient: shallots, quantity: 20, unit_of_measure: "g" },
      { ingredient: dijon_mustard, quantity: 8, unit_of_measure: "g" },
      { ingredient: apples, quantity: 20, unit_of_measure: "g" },
      { ingredient: white_vinegar, quantity: 20, unit_of_measure: "g" },
      { ingredient: rapeseed_oil, quantity: 50, unit_of_measure: "g" },
    ],
    tags: [
      { name: "Component" },
      { name: "European" }
    ]
  },
  { # Pastry
    recipe_data: {
      user_id: admin.id,
      name: "Pastry",
      description: "To be used for savoury tarts",
      instructions: "Rub cold diced butter with dry ingredients. Add egg yolks, mustard and a touch of water. Should be very soft, rest in fridge for at least 2 hours.",
      prep_time: 15,
      cook_time: 0,
      meal_type: [],
      included_recipes: [""]
    },
    ingredients: [
      { ingredient: plain_flour, quantity: 200, unit_of_measure: "g" },
      { ingredient: rye_flour, quantity: 75, unit_of_measure: "g" },
      { ingredient: icing_sugar, quantity: 8, unit_of_measure: "g" },
      { ingredient: salt, quantity: 3, unit_of_measure: "g" },
      { ingredient: parmesan, quantity: 25, unit_of_measure: "g" },
      { ingredient: egg_yolks, quantity: 2, unit_of_measure: "" },
      { ingredient: unsalted_butter, quantity: 150, unit_of_measure: "g" },
      { ingredient: english_mustard, quantity: 15, unit_of_measure: "g" },
      { ingredient: water, quantity: 1, unit_of_measure: "splash" }
    ],
    tags: [
      { name: "Component" },
      { name: "European" }
    ]
  },
  { # Soda Bread
    recipe_data: {
      user_id: admin.id,
      name: "Soda Bread",
      description: "An easy, soft, dark bread",
      instructions: "Combine ingredients and bake at 170",
      prep_time: 5,
      cook_time: 20,
      meal_type: [],
      included_recipes: [""]
    },
    ingredients: [
      { ingredient: plain_flour, quantity: 100, unit_of_measure: "g" },
      { ingredient: whole_meal_flour, quantity: 100, unit_of_measure: "g" },
      { ingredient: salt, quantity: 4, unit_of_measure: "g" },
      { ingredient: baking_soda, quantity: 6, unit_of_measure: "g" },
      { ingredient: oats, quantity: 60, unit_of_measure: "g" },
      { ingredient: treacle, quantity: 12, unit_of_measure: "g" },
      { ingredient: honey, quantity: 12, unit_of_measure: "g" },
      { ingredient: buttermilk, quantity: 200, unit_of_measure: "g" }
    ],
    tags: [
      { name: "Component" },
      { name: "Bread" },
      { name: "European" }
    ]
  },
  { # Hummus
    recipe_data: {
      user_id: admin.id,
      name: "Hummus",
      description: "Everyone knows hummus right? Banging dip",
      instructions: "Roast garlic. Juice lemon. Cook chickpeas (unless canned). Add ingredients and blend",
      prep_time: 10,
      cook_time: 0,
      meal_type: [snack],
      included_recipes: [""]
    },
    ingredients: [
      { ingredient: chickpeas, quantity: 1, unit_of_measure: "kg" },
      { ingredient: garlic, quantity: 30, unit_of_measure: "g" },
      { ingredient: tahini, quantity: 100, unit_of_measure: "g" },
      { ingredient: lemons, quantity: 30, unit_of_measure: "g" },
      { ingredient: rapeseed_oil, quantity: 100, unit_of_measure: "ml" },
      { ingredient: water, quantity: 250, unit_of_measure: "ml" }
    ],
    tags: [
      { name: "Component" },
      { name: "European" }
    ]
  },
  { # Fennel Cracker
    recipe_data: {
      user_id: admin.id,
      name: "Fennel Cracker",
      description: "Thin, crispy cracker great for dips",
      instructions: "Toast and chop fennel seeds. Mix ingredients, spread flat and bake at 180",
      prep_time: 5,
      cook_time: 20,
      meal_type: [],
      included_recipes: [""]
    },
    ingredients: [
      { ingredient: plain_flour, quantity: 250, unit_of_measure: "g" },
      { ingredient: fennel_seeds, quantity: 15, unit_of_measure: "g" },
      { ingredient: milk, quantity: 92, unit_of_measure: "g" },
      { ingredient: whole_eggs, quantity: 1, unit_of_measure: "" },
      { ingredient: castor_sugar, quantity: 3, unit_of_measure: "g" },
      { ingredient: salt, quantity: 2, unit_of_measure: "g" }
    ],
    tags: [
      { name: "Component" },
      { name: "Bread" },
      { name: "European" }
    ]
  },
  { # Gnocchi
    recipe_data: {
      user_id: admin.id,
      name: "Gnocchi",
      description: "Some things are just better when you make them from scratch. Gnocchi epitomises that.",
      instructions: "Bake potatoes in foil with salt. Mash cooked potato. Add eggs, parmesan, oil, salt, pepper, flour. Knead until smooth. Roll out long tubes ~2cm thick and slice into pillows. Cook in salted water until rises to the top. Fry or use as you wish.",
      prep_time: 45,
      cook_time: 120,
      meal_type: [],
      included_recipes: [""]
    },
    ingredients: [
      { ingredient: maris_piper_potatoes, quantity: 400, unit_of_measure: "g" },
      { ingredient: egg_yolks, quantity: 4, unit_of_measure: "" },
      { ingredient: plain_flour, quantity: 200, unit_of_measure: "g" },
      { ingredient: olive_oil, quantity: 50, unit_of_measure: "ml" },
      { ingredient: parmesan, quantity: 80, unit_of_measure: "g" },
      { ingredient: salt, quantity: 1, unit_of_measure: "per taste" },
      { ingredient: black_pepper, quantity: 1, unit_of_measure: "per taste" },
    ],
    tags: [
      { name: "Component" },
      { name: "European" },
      { name: "Main" }
    ]
  },
  { # Potato Burger Buns
    recipe_data: {
      user_id: admin.id,
      name: "Potato Burger Buns",
      description: "Surprisingly springy, soft buns",
      instructions: "Boil and mash potato. Combine ingredients (Water at 38 degreess, soft room temp butter, egg lightly beaten) and knead until smooth. Allow to prove. Roll into buns, glaze and bake.",
      prep_time: 30,
      cook_time: 20,
      meal_type: [],
      included_recipes: [""]
    },
    ingredients: [
      { ingredient: bread_flour, quantity: 6, unit_of_measure: "cups" },
      { ingredient: castor_sugar, quantity: 0.5, unit_of_measure: "cups" },
      { ingredient: salt, quantity: 1, unit_of_measure: "tbsp" },
      { ingredient: yeast, quantity: 1.5, unit_of_measure: "tsp" },
      { ingredient: water, quantity: 1.5, unit_of_measure: "cups" },
      { ingredient: honey, quantity: 0.25, unit_of_measure: "cups" },
      { ingredient: maris_piper_potatoes, quantity: 1, unit_of_measure: "cups" },
      { ingredient: whole_eggs, quantity: 2, unit_of_measure: "" },
      { ingredient: unsalted_butter, quantity: 115, unit_of_measure: "g" }
    ],
    tags: [
      { name: "American" },
      { name: "Component" },
      { name: "Bread" }
    ]
  },
  { # Doughnuts
    recipe_data: {
      user_id: admin.id,
      name: "Doughnuts",
      description: "Pillows of joy. No more need saying.",
      instructions: "Mix all dough ingredients (excluding butter) and knead by hand for 8 minutes, stretching and tearing.
                     Add butter gradually until fully incorporated.
                     Knead dough for another 5 minutes until glossy, smooth, and elastic.
                     Cover dough with cling film and let it double in size. Knock back dough, cover again, and refrigerate overnight.
                     Next day, divide into 50g pieces. Roll into tight buns. Leave to dbl in size covered for 4hrs.
                     Fry in oil at 180°C. Coat with sugar whilst warm. Fill when cold.",
      prep_time: 30,
      cook_time: 2,
      meal_type: [snack],
      included_recipes: [""]
    },
    ingredients: [
      { ingredient: bread_flour, quantity: 170, unit_of_measure: "g" },
      { ingredient: whole_eggs, quantity: 1, unit_of_measure: "" },
      { ingredient: water, quantity: 40, unit_of_measure: "g" },
      { ingredient: castor_sugar, quantity: 15, unit_of_measure: "g" },
      { ingredient: yeast, quantity: 2, unit_of_measure: "g" },
      { ingredient: salt, quantity: 3, unit_of_measure: "g" },
      { ingredient: unsalted_butter, quantity: 40, unit_of_measure: "g" },
    ],
    tags: [
      { name: "Sweet Treat" },
      { name: "Bread" },
      { name: "European" },
      { name: "American" }
    ]
  },
  { # Focaccia
    recipe_data: {
      user_id: admin.id,
      name: "Focaccia",
      description: "Italian olive bread, great center piece for a family feast",
      instructions: "Combine Flour and salt. Mix water and yest separately.
                     Add liquid to flour and knead for 5 mins until stretchy and smooth.
                     Then three times do every 30 mins, fold onto itself trapping air bubbles.
                     Once doubled in size, heavily oil a tray and stretch out to fill. Allow to prove again.
                     Make indents using oiled finger when space is filled. Rest 30 then bake at 220. Glaze with oil oil when hot.",
      prep_time: 30,
      cook_time: 25,
      meal_type: [snack],
      included_recipes: [""]
    },
    ingredients: [
      { ingredient: bread_flour, quantity: 500, unit_of_measure: "g" },
      { ingredient: salt, quantity: 10, unit_of_measure: "g" },
      { ingredient: yeast, quantity: 3, unit_of_measure: "g" },
      { ingredient: water, quantity: 400, unit_of_measure: "g" },
      { ingredient: olive_oil, quantity: 80, unit_of_measure: "g" }
    ],
    tags: [
      { name: "Bread" },
      { name: "European" },
      { name: "Component" }
    ]
  },
  { # Ciabatta
    recipe_data: {
      user_id: admin.id,
      name: "Ciabatta",
      description: "Italian light, soft bread. Their version of the baguette",
      instructions: "Preheat Oven to 250°C. Combine Flour and salt. Mix water and yest separately.
                     Add liquid to flour and bring together just.
                     Then three times do every 30 mins, fold onto itself trapping air bubbles using oil. Keep covered.
                     Once doubled in size, heavily flour a tray and stretch out to a loaf size. Allow to prove again.
                     Bake for 16 mins",
      prep_time: 30,
      cook_time: 16,
      meal_type: [],
      included_recipes: [""]
    },
    ingredients: [
      { ingredient: bread_flour, quantity: 400, unit_of_measure: "g" },
      { ingredient: salt, quantity: 8, unit_of_measure: "g" },
      { ingredient: yeast, quantity: 3, unit_of_measure: "g" },
      { ingredient: water, quantity: 350, unit_of_measure: "g" },
      { ingredient: olive_oil, quantity: 20, unit_of_measure: "g" }
    ],
    tags: [
      { name: "Bread" },
      { name: "European" },
      { name: "Component" }
    ]
  },
  { # Basic Muffin
    recipe_data: {
      user_id: admin.id,
      name: "Basic Muffin",
      description: "An easy guaranteed victory of a muffin recipe.",
      instructions: "Combine wet and dry ingredients separately. Add one cup of any filling (Blueberries/nuts etc). Mix and bake at 180°C.",
      prep_time: 5,
      cook_time: 15,
      meal_type: [snack, breakfast],
      included_recipes: [""]
    },
    ingredients: [
      { ingredient: plain_flour, quantity: 2, unit_of_measure: "cups" },
      { ingredient: castor_sugar, quantity: 1, unit_of_measure: "cups" },
      { ingredient: baking_powder, quantity: 2, unit_of_measure: "tsp" },
      { ingredient: baking_soda, quantity: 1, unit_of_measure: "tsp" },
      { ingredient: milk, quantity: 1, unit_of_measure: "cups" },
      { ingredient: sunflower_oil, quantity: 0.25, unit_of_measure: "cups" },
      { ingredient: whole_eggs, quantity: 2, unit_of_measure: "" }
    ],
    tags: [
      { name: "Baked Goods" },
      { name: "Sweet Treat" },
      { name: "American" }
    ]
  },
  { # Chimichurri
    recipe_data: {
      user_id: admin.id,
      name: "Chimichurri",
      description: "Herby, spicy sauce that bangs with barbequed meats",
      instructions: "Pick herbs, add everything except the oil to a blender. Slowly oil whilst blending to create emulsion",
      prep_time: 10,
      cook_time: 0,
      meal_type: [],
      included_recipes: [""]
    },
    ingredients: [
      { ingredient: parsley, quantity: 1, unit_of_measure: "bunch" },
      { ingredient: oregano, quantity: 1, unit_of_measure: "bunch" },
      { ingredient: chilli_flakes, quantity: 1, unit_of_measure: "pinch" },
      { ingredient: garlic, quantity: 4, unit_of_measure: "cloves" },
      { ingredient: sunflower_oil, quantity: 150, unit_of_measure: "ml" },
      { ingredient: red_wine_vinegar, quantity: 50, unit_of_measure: "ml" },
      { ingredient: salt, quantity: 1, unit_of_measure: "pinch" },
    ],
    tags: [
      { name: "Component" }
    ]
  },
  { # Katsu Sauce
    recipe_data: {
      user_id: admin.id,
      name: "Katsu Sauce",
      description: "Slap this with breaded chicken and rice for one hell of a meal",
      instructions: "Sweat onions, ginger, chilli, garlic, carrots in butter. Add flour and cook out. Add sugar, soy sauce, garam masala, curry powder, and chicken stock. Simmer for 20 mins and blend.",
      prep_time: 15,
      cook_time: 20,
      meal_type: [],
      included_recipes: [""]
    },
    ingredients: [
      { ingredient: ginger, quantity: 50, unit_of_measure: "g" },
      { ingredient: white_onions, quantity: 4, unit_of_measure: "" },
      { ingredient: carrots, quantity: 6, unit_of_measure: "" },
      { ingredient: garlic, quantity: 4, unit_of_measure: "cloves" },
      { ingredient: fresh_chilli, quantity: 1, unit_of_measure: "" },
      { ingredient: unsalted_butter, quantity: 75, unit_of_measure: "g" },
      { ingredient: plain_flour, quantity: 2, unit_of_measure: "tbsp" },
      { ingredient: soy_sauce, quantity: 50, unit_of_measure: "ml" },
      { ingredient: garam_masala, quantity: 2, unit_of_measure: "tbsp" },
      { ingredient: curry_powder, quantity: 2, unit_of_measure: "tbsp" },
      { ingredient: chicken_stock, quantity: 500, unit_of_measure: "ml" },
      { ingredient: brown_sugar, quantity: 1, unit_of_measure: "tbsp" },
    ],
    tags: [
      { name: "Japanese" },
      { name: "Component" }
    ]
  },
  { # Scotch Pancakes
    recipe_data: {
      user_id: admin.id,
      name: "Scotch Pancakes",
      description: "Thick, fluffy breakfast goodness",
      instructions: "Combine ingredients well. Allow to rest in fridge for at 30 mins. Ideally overnight.",
      prep_time: 10,
      cook_time: 5,
      meal_type: [breakfast],
      included_recipes: [""]
    },
    ingredients: [
      { ingredient: plain_flour, quantity: 2.25, unit_of_measure: "cups" },
      { ingredient: baking_powder, quantity: 3, unit_of_measure: "tsp" },
      { ingredient: castor_sugar, quantity: 0.5, unit_of_measure: "cups" },
      { ingredient: whole_eggs, quantity: 1, unit_of_measure: "" },
      { ingredient: milk, quantity: 1.25, unit_of_measure: "cups" },
      { ingredient: creme_fraiche, quantity: 0.5, unit_of_measure: "cups" },
      { ingredient: unsalted_butter, quantity: 0.5, unit_of_measure: "cups" }
    ],
    tags: [
      { name: "American" },
      { name: "Component" },
      { name: "Sweet Treat" }
    ]
  },
  { # Crepes
    recipe_data: {
      user_id: admin.id,
      name: "Crepes",
      description: "Simple. Elegant. Should come out more often.",
      instructions: "Combine ingredients well. Allow to sit in fridge for 30mins, ideally overnight.",
      prep_time: 5,
      cook_time: 5,
      meal_type: [breakfast],
      included_recipes: [""]
    },
    ingredients: [
      { ingredient: plain_flour, quantity: 100, unit_of_measure: "g" },
      { ingredient: milk, quantity: 300, unit_of_measure: "ml" },
      { ingredient: whole_eggs, quantity: 2, unit_of_measure: "" },
    ],
    tags: [
      { name: "European" },
      { name: "Component" }
    ]
  },
  { # House Dressing
    recipe_data: {
      user_id: admin.id,
      name: "House Dressing",
      description: "A salad dressing for every occasion",
      instructions: "Blend all ingredients except oil. Slowly add oil to blender to create emulsion.",
      prep_time: 10,
      cook_time: 0,
      meal_type: [],
      included_recipes: [""]
    },
    ingredients: [
      { ingredient: sherry_vinegar, quantity: 325, unit_of_measure: "ml" },
      { ingredient: mustard_powder, quantity: 10, unit_of_measure: "g" },
      { ingredient: salt, quantity: 50, unit_of_measure: "g" },
      { ingredient: garlic, quantity: 6, unit_of_measure: "cloves" },
      { ingredient: black_pepper, quantity: 10, unit_of_measure: "g" },
      { ingredient: demerara_sugar, quantity: 140, unit_of_measure: "g" },
      { ingredient: grapeseed_oil, quantity: 900, unit_of_measure: "ml" },
      { ingredient: olive_oil, quantity: 900, unit_of_measure: "ml" }
    ],
    tags: [
      { name: "Component" },
      { name: "European" }
    ]
  },
  { # Ricotta Gnocchi
    recipe_data: {
      user_id: admin.id,
      name: "Ricotta Gnocchi",
      description: "A seamingly lighter, yet no less tasty version of the original",
      instructions: "Combine ingredients, knead until smooth. Roll into snakes, chop into pillows. Blanch in salted boiling water until they rise to surface. Allow to dry and use as wished.",
      prep_time: 30,
      cook_time: 10,
      meal_type: [],
      included_recipes: [""]
    },
    ingredients: [
      { ingredient: whole_eggs, quantity: 1, unit_of_measure: "" },
      { ingredient: ricotta_cheese, quantity: 250, unit_of_measure: "g" },
      { ingredient: plain_flour, quantity: 110, unit_of_measure: "g" },
    ],
    tags: [
      { name: "Component" },
      { name: "European" }
    ]
  },
  { # Pickling Liqor
    recipe_data: {
      user_id: admin.id,
      name: "Pickling Liqor",
      description: "A staple, base set up to pickle anything you fancy",
      instructions: "Bring to boil and cool. Use as wished",
      prep_time: 5,
      cook_time: 5,
      meal_type: [],
      included_recipes: [""]
    },
    ingredients: [
      { ingredient: white_wine_vinegar, quantity: 100, unit_of_measure: "g" },
      { ingredient: castor_sugar, quantity: 200, unit_of_measure: "g" },
      { ingredient: water, quantity: 300, unit_of_measure: "g" },
    ],
    tags: [
      { name: "Component" }
    ]
  },
  { # Spicy Savoury Granola
    recipe_data: {
      user_id: admin.id,
      name: "Spicy Savoury Granola",
      description: "Add to small plates for a bit of crunch",
      instructions: "Combine all ingredients and bake at 180°C until toasted",
      prep_time: 10,
      cook_time: 25,
      meal_type: [],
      included_recipes: [""]
    },
    ingredients: [
      { ingredient: oats, quantity: 100, unit_of_measure: "g" },
      { ingredient: pumpkin_seeds, quantity: 100, unit_of_measure: "g" },
      { ingredient: sunflower_seeds, quantity: 100, unit_of_measure: "g" },
      { ingredient: mustard_seeds, quantity: 30, unit_of_measure: "g" },
      { ingredient: unsalted_butter, quantity: 30, unit_of_measure: "g" },
      { ingredient: lamb_fat, quantity: 60, unit_of_measure: "g" },
      { ingredient: salt, quantity: 1, unit_of_measure: "pinch" },
      { ingredient: golden_syrup, quantity: 30, unit_of_measure: "g" },
      { ingredient: paprika, quantity: 2, unit_of_measure: "tsp" },
      { ingredient: cayenne_pepper, quantity: 1, unit_of_measure: "tsp" },
      { ingredient: chilli_flakes, quantity: 2, unit_of_measure: "tsp" }
    ],
    tags: [
      { name: "Component" },
      { name: "European" }
    ]
  },
  { # Beer Batter
    recipe_data: {
      user_id: admin.id,
      name: "Beer Batter",
      description: "Turn that boring whatever into a crispy delight",
      instructions: "Mix ingredients well",
      prep_time: 10,
      cook_time: 0,
      meal_type: [],
      included_recipes: [""]
    },
    ingredients: [
      { ingredient: plain_flour, quantity: 200, unit_of_measure: "g" },
      { ingredient: lager_beer, quantity: 150, unit_of_measure: "ml" },
      { ingredient: ale, quantity: 150, unit_of_measure: "ml" },
      { ingredient: salt, quantity: 5, unit_of_measure: "g" },
      { ingredient: black_pepper, quantity: 5, unit_of_measure: "g" },
      { ingredient: curry_powder, quantity: 5, unit_of_measure: "g" },
    ],
    tags: [
      { name: "Component" },
      { name: "European" }
    ]
  },
  { # Cheddar Shortcrust Pastry
    recipe_data: {
      user_id: admin.id,
      name: "Cheddar Shortcrust Pastry",
      description: "Love pastry? Add cheese and its just even better",
      instructions: "Rub cold cubed butter with flour. Add other ingredients. Knead lighlty and chill in cling film until needed.",
      prep_time: 10,
      cook_time: 0,
      meal_type: [],
      included_recipes: [""]
    },
    ingredients: [
      { ingredient: cheddar, quantity: 60, unit_of_measure: "g" },
      { ingredient: plain_flour, quantity: 120, unit_of_measure: "g" },
      { ingredient: salt, quantity: 1, unit_of_measure: "pinch" },
      { ingredient: unsalted_butter, quantity: 60, unit_of_measure: "g" },
      { ingredient: whole_eggs, quantity: 1, unit_of_measure: "" },
    ],
    tags: [
      { name: "Component" },
      { name: "Pastry" }
    ]
  },
  { # Bechamel
    recipe_data: {
      user_id: admin.id,
      name: "Bechamel",
      description: "The base for sauces everyone should know",
      instructions: "Melt butter, add flour and cook out for 1 minute. Add milk and herbs and cook on very low heat for 30 mins until thick and glossy.",
      prep_time: 5,
      cook_time: 30,
      meal_type: [],
      included_recipes: [""]
    },
    ingredients: [
      { ingredient: plain_flour, quantity: 50, unit_of_measure: "g" },
      { ingredient: unsalted_butter, quantity: 80, unit_of_measure: "g" },
      { ingredient: milk, quantity: 900, unit_of_measure: "ml" },
      { ingredient: bay_leaves, quantity: 2, unit_of_measure: "" },
      { ingredient: thyme, quantity: 2, unit_of_measure: "sprigs" },
    ],
    tags: [
      { name: "Component" },
      { name: "European" }
    ]
  },
  { # Chicken Stock
    recipe_data: {
      user_id: admin.id,
      name: "Chicken Stock",
      description: "Far better homemade than that horrible salty stuff in cubes.",
      instructions: "Prepare chicken, keep any meat, we only need the carcass. Roughly chop all veg. Add to pan, cover and simmer for 3 hrs. DO NOT BOIL.",
      prep_time: 10,
      cook_time: 180,
      meal_type: [],
      included_recipes: [""]
    },
    ingredients: [
      { ingredient: whole_chicken, quantity: 1, unit_of_measure: "" },
      { ingredient: white_onions, quantity: 1, unit_of_measure: "" },
      { ingredient: carrots, quantity: 1, unit_of_measure: "" },
      { ingredient: celery, quantity: 1, unit_of_measure: "stick" },
      { ingredient: thyme, quantity: 1, unit_of_measure: "sprig" },
      { ingredient: garlic, quantity: 1, unit_of_measure: "bulb" }
    ],
    tags: [
      { name: "Component" }
    ]
  },
  { # Fresh Pasta
    recipe_data: {
      user_id: admin.id,
      name: "Fresh Pasta",
      description: "If you have the time, its worth it. If you don't, then make time.",
      instructions: "Sieve flour. Create a mound of flour with a well. Add lightly beaten eggs, mix gently. Knead for 5-10 mins until smooth. Rest in fridge in cling film for an hour. Take a small piece, flatten and feed through pasta machine on thickest setting. Slowly decrease thickness until desired.",
      prep_time: 30,
      cook_time: 3,
      meal_type: [],
      included_recipes: [""]
    },
    ingredients: [
      { ingredient: flour_00, quantity: 500, unit_of_measure: "g" },
      { ingredient: salt, quantity: 1, unit_of_measure: "pinch" },
      { ingredient: egg_yolks, quantity: 6, unit_of_measure: "" },
      { ingredient: whole_eggs, quantity: 4, unit_of_measure: "" },
      { ingredient: olive_oil, quantity: 25, unit_of_measure: "ml" },
    ],
    tags: [
      { name: "Component" },
      { name: "European" }
    ]
  },
  { # Tomato and Aubergine Saladw
    recipe_data: {
      user_id: admin.id,
      name: "Tomato and Aubergine Salad",
      description: "Fresh, wholesome summer salad.",
      instructions: "Dice Aubergine, cover in salt and leave to drain for 30mins, then squeeze out excess liquid, pat dry and fry in olive oil until golden. Prepare rest of ingredients and toss altogether.",
      prep_time: 45,
      cook_time: 15,
      meal_type: [],
      included_recipes: [""]
    },
    ingredients: [
      { ingredient: aubergine, quantity: 1, unit_of_measure: "" },
      { ingredient: cherry_tomatoes, quantity: 2, unit_of_measure: "punnets" },
      { ingredient: pomegranates, quantity: 0.5, unit_of_measure: "" },
      { ingredient: oregano, quantity: 0.5, unit_of_measure: "bunch" },
      { ingredient: parsley, quantity: 0.25, unit_of_measure: "bunch" },
      { ingredient: olive_oil, quantity: 50, unit_of_measure: "ml" },
      { ingredient: sherry_vinegar, quantity: 25, unit_of_measure: "ml" },
      { ingredient: salt, quantity: 1, unit_of_measure: "pinch" },
      { ingredient: black_pepper, quantity: 1, unit_of_measure: "pinch" },
      { ingredient: garlic, quantity: 2, unit_of_measure: "cloves" },
      { ingredient: zaatar, quantity: 1, unit_of_measure: "tbsp" },
      { ingredient: maple_syrup, quantity: 0.75, unit_of_measure: "tsp" },
    ],
    tags: [
      { name: "Component" },
      { name: "European" },
      { name: "Salad" }
    ]
  },
  { # Fennel and Apple Salad
    recipe_data: {
      user_id: admin.id,
      name: "Fennel and Apple Salad",
      description: "Eyebrow raising initally, but instantly proves itself",
      instructions: "Thinly slice apple, celery, and fennel. Toast nuts. Chop herbs, zest and squeeze out orange juice. Toss altogether and serve",
      prep_time: 15,
      cook_time: 5,
      meal_type: [],
      included_recipes: [""]
    },
    ingredients: [
      { ingredient: fennel, quantity: 1, unit_of_measure: "bulb" },
      { ingredient: apples, quantity: 2, unit_of_measure: "" },
      { ingredient: celery, quantity: 1, unit_of_measure: "stick" },
      { ingredient: oranges, quantity: 2, unit_of_measure: "" },
      { ingredient: dried_cranberries, quantity: 30, unit_of_measure: "g" },
      { ingredient: almonds, quantity: 50, unit_of_measure: "g" },
      { ingredient: olive_oil, quantity: 30, unit_of_measure: "ml" },
      { ingredient: salt, quantity: 1, unit_of_measure: "pinch" },
      { ingredient: dill, quantity: 0.5, unit_of_measure: "bunch" },
    ],
    tags: [
      { name: "Component" },
      { name: "Salad" },
      { name: "European" }
    ]
  },
  { # Grilled Courgette and Halloumi
    recipe_data: {
      user_id: admin.id,
      name: "Grilled Courgette and Halloumi",
      description: "A salad perfect for a summers BBQ. A crowd pleaser.",
      instructions: "Slice courgette, lightly oil and grill until charred. Blanch asparagus in boiling water for 20 seconds then grill. Grill the halloumi then add rest of ingredients and serve.",
      prep_time: 15,
      cook_time: 20,
      meal_type: [],
      included_recipes: [""]
    },
    ingredients: [
      { ingredient: cherry_tomatoes, quantity: 350, unit_of_measure: "g" },
      { ingredient: olive_oil, quantity: 140, unit_of_measure: "ml" },
      { ingredient: asparagus, quantity: 24, unit_of_measure: "spears" },
      { ingredient: courgette, quantity: 2, unit_of_measure: "" },
      { ingredient: rocket, quantity: 25, unit_of_measure: "g" },
      { ingredient: salt, quantity: 1, unit_of_measure: "pinch" },
      { ingredient: basil, quantity: 0.5, unit_of_measure: "bunch" }
    ],
    tags: [
      { name: "Salad" },
      { name: "European" },
      { name: "Component" }
    ]
  },
  { # Fattoush
    recipe_data: {
      user_id: admin.id,
      name: "Fattoush",
      description: "Turkish delight, but the salad version.",
      instructions: "Slice and dice all components. Crush Garlic. Add toasted/stale bread if desired. Combine together and serve.",
      prep_time: 15,
      cook_time: 0,
      meal_type: [],
      included_recipes: [""]
    },
    ingredients: [
      { ingredient: greek_yogurt, quantity: 200, unit_of_measure: "g" },
      { ingredient: tomatoes, quantity: 380, unit_of_measure: "g" },
      { ingredient: red_radishes, quantity: 100, unit_of_measure: "g" },
      { ingredient: cucumbers, quantity: 1, unit_of_measure: "" },
      { ingredient: spring_onion, quantity: 2, unit_of_measure: "" },
      { ingredient: mint, quantity: 15, unit_of_measure: "g" },
      { ingredient: parsley, quantity: 25, unit_of_measure: "g" },
      { ingredient: garlic, quantity: 2, unit_of_measure: "cloves" },
      { ingredient: lemons, quantity: 1, unit_of_measure: "" },
      { ingredient: olive_oil, quantity: 60, unit_of_measure: "ml" },
    ],
    tags: [
      { name: "European" },
      { name: "Salad" },
      { name: "Component" }
    ]
  },
  { # Charred Peas with Lemon and Parmesan
    recipe_data: {
      user_id: admin.id,
      name: "Charred Peas with Lemon and Parmesan",
      description: "If you want a tasty side salad, look no further.",
      instructions: "Blanch greens for 30 seconds then grill until charred. Juice and zest lemon. Prepare ingredients as desired, combine and serve.",
      prep_time: 15,
      cook_time: 10,
      meal_type: [],
      included_recipes: [""]
    },
    ingredients: [
      { ingredient: lemons, quantity: 1, unit_of_measure: "" },
      { ingredient: garlic, quantity: 1, unit_of_measure: "clove" },
      { ingredient: miso_paste, quantity: 1, unit_of_measure: "tsp" },
      { ingredient: parmesan, quantity: 20, unit_of_measure: "g" },
      { ingredient: olive_oil, quantity: 3.5, unit_of_measure: "tbsp" },
      { ingredient: snap_peas, quantity: 320, unit_of_measure: "g" },
      { ingredient: basil, quantity: 10, unit_of_measure: "g" },
    ],
    tags: [
      { name: "Salad" },
      { name: "European" }
    ]
  },
  { # Kohl Rabi, Beetroot and Apple
    recipe_data: {
      user_id: admin.id,
      name: "Kohl Rabi, Beetroot and Apple",
      description: "A powerful accompaniment to a rich quiche or other.",
      instructions: "Thinly slice kohl rabi, apple. Grate beetroot, chop coriander and crush garlic. Toss all inngredients together.",
      prep_time: 15,
      cook_time: 0,
      meal_type: [],
      included_recipes: [""]
    },
    ingredients: [
      { ingredient: kohl_rabi, quantity: 2, unit_of_measure: "" },
      { ingredient: apples, quantity: 3, unit_of_measure: "" },
      { ingredient: beetroot, quantity: 1, unit_of_measure: "" },
      { ingredient: coriander, quantity: 40, unit_of_measure: "g" },
      { ingredient: garlic, quantity: 1, unit_of_measure: "clove" },
      { ingredient: apple_cider_vinegar, quantity: 55, unit_of_measure: "ml" },
      { ingredient: olive_oil, quantity: 50, unit_of_measure: "ml" },
      { ingredient: salt, quantity: 1, unit_of_measure: "pinch" }
    ],
    tags: [
      { name: "Salad" },
      { name: "European" }
    ]
  },
  { # Chicken Katsu Curry
    recipe_data: {
      user_id: admin.id,
      name: "Chicken Katsu Curry",
      description: "A Japanese favourite in the household. It's a bit of a treat really as its deep fried chicken with a sauce.",
      instructions: "Prep the katsu sauce (Separate Recipe). Prep chicken breast, add milk and soy to brine the chicken for 2 hours. Pane and fry chicken. Cook rice and serve.",
      prep_time: 45,
      cook_time: 30,
      meal_type: [lunch, dinner],
      included_recipes: [""]
    },
    ingredients: [
      { ingredient: chicken_breast, quantity: 2, unit_of_measure: "" },
      { ingredient: sushi_rice, quantity: 150, unit_of_measure: "g" },
      { ingredient: panko_bread_crumbs, quantity: 50, unit_of_measure: "g" },
      { ingredient: whole_eggs, quantity: 3, unit_of_measure: "" },
      { ingredient: milk, quantity: 200, unit_of_measure: "ml" },
      { ingredient: soy_sauce, quantity: 25, unit_of_measure: "g" },
      { ingredient: plain_flour, quantity: 50, unit_of_measure: "g" }
    ],
    tags: [
      { name: "Japanese" },
      { name: "Main" }
    ]
  },
  { # Paella
    recipe_data: {
      user_id: admin.id,
      name: "Paella",
      description: "A Spanish staple. Saffron infused rice with some of the tastiest seafood you'll eat",
      instructions: "Sweat onions and garlic. Add diced chicken and chipolatas to pan. Once browned, add saffron, paprika and tomatoes.
                     Cook until nearly dry. Add rice, add stock. Do not stir for first 15 mins.
                     Add langoustines and cook 8-10 mins. Cook mussels separately. Add prepped squid and mussels to paella and serve with chopped parsley.",
      prep_time: 45,
      cook_time: 45,
      meal_type: [lunch, dinner],
      included_recipes: [""]
    },
    ingredients: [
      { ingredient: chicken_breast, quantity: 2, unit_of_measure: "" },
      { ingredient: chipolatas, quantity: 4, unit_of_measure: "" },
      { ingredient: squid, quantity: 1, unit_of_measure: "" },
      { ingredient: mussels, quantity: 500, unit_of_measure: "g" },
      { ingredient: langoustines, quantity: 4, unit_of_measure: "" },
      { ingredient: white_onions, quantity: 1, unit_of_measure: "" },
      { ingredient: garlic, quantity: 3, unit_of_measure: "cloves" },
      { ingredient: saffron_threads, quantity: 1, unit_of_measure: "pinch" },
      { ingredient: paprika, quantity: 1, unit_of_measure: "tsp" },
      { ingredient: canned_tomatoes, quantity: 400, unit_of_measure: "g" },
      { ingredient: bomba_rice, quantity: 400, unit_of_measure: "g" },
      { ingredient: fish_stock, quantity: 1.2, unit_of_measure: "l" },
      { ingredient: parsley, quantity: 1, unit_of_measure: "tbsp" },
    ],
    tags: [
      { name: "Mediterranean" },
      { name: "Main" }
    ]
  },
  { # Pizza
    recipe_data: {
      user_id: admin.id,
      name: "Pizza",
      description: "No explanation needed. We all know what this is.",
      instructions: "Mix and knead until smooth and springy. Rest in floured bowl and cover until doubled. Knock back and ball up. Store in fridge until needed.
                     Make sauce. Cook down tomatoes, garlic, oregano, salt and olive oil.",
      prep_time: 20,
      cook_time: 6,
      meal_type: [lunch, dinner],
      included_recipes: [""]
    },
    ingredients: [
      { ingredient: yeast, quantity: 7, unit_of_measure: "g" },
      { ingredient: olive_oil, quantity: 25, unit_of_measure: "ml" },
      { ingredient: castor_sugar, quantity: 1, unit_of_measure: "tsp" },
      { ingredient: water, quantity: 250, unit_of_measure: "ml" },
      { ingredient: flour_00, quantity: 500, unit_of_measure: "g" },
      { ingredient: salt, quantity: 5, unit_of_measure: "g" },
      { ingredient: canned_tomatoes, quantity: 400, unit_of_measure: "g" },
      { ingredient: garlic, quantity: 3, unit_of_measure: "cloves" },
      { ingredient: oregano, quantity: 1, unit_of_measure: "handful" },
      { ingredient: basil, quantity: 1, unit_of_measure: "handful" },
    ],
    tags: [
      { name: "Italian" },
      { name: "Mediterranean" },
      { name: "Main" }
    ]
  },
  { # Bolognese
    recipe_data: {
      user_id: admin.id,
      name: "Bolognese",
      description: "An authentic family recipe from Italy.",
      instructions: "Fry meats until golden then set aside. Cook mirepoix, add tomato paste and cook for 5 mins.
                     Return meat, add wine. Simmer for 3 hours. Add milk for final 40 mins. Serve.",
      prep_time: 35,
      cook_time: 240,
      meal_type: [lunch, dinner],
      included_recipes: [""]
    },
    ingredients: [
      { ingredient: ground_beef, quantity: 300, unit_of_measure: "g" },
      { ingredient: ground_pork, quantity: 150, unit_of_measure: "g" },
      { ingredient: unsalted_butter, quantity: 50, unit_of_measure: "g" },
      { ingredient: white_onions, quantity: 50, unit_of_measure: "g" },
      { ingredient: carrots, quantity: 50, unit_of_measure: "g" },
      { ingredient: celery, quantity: 50, unit_of_measure: "g" },
      { ingredient: red_wine, quantity: 125, unit_of_measure: "ml" },
      { ingredient: tomato_paste, quantity: 30, unit_of_measure: "g" },
      { ingredient: milk, quantity: 125, unit_of_measure: "ml" }
    ],
    tags: [
      { name: "Italian" },
      { name: "Main" }
    ]
  },
  { # Mushroom Risotto with Gremolata
    recipe_data: {
      user_id: admin.id,
      name: "Mushroom Risotto with Gremolata",
      description: "A classic dish that uses bog standard chesnut mushrooms, with the porcini, brown butter and miso adding depth.",
      instructions: "Prep gremolata. Rehydrate procini in chicken stock. Fry onions, add garlic, add sliced chesnut mushrooms and cook for 15 mins. Add wine until cooked off, add rice and miso. Cook using stock , finish with gremolata and brown butter.",
      prep_time: 20,
      cook_time: 40,
      meal_type: [lunch, dinner],
      included_recipes: [""]
    },
    ingredients: [
      { ingredient: porcini_mushrooms, quantity: 1, unit_of_measure: "tbsp" },
      { ingredient: chicken_stock, quantity: 500, unit_of_measure: "ml" },
      { ingredient: white_onions, quantity: 1, unit_of_measure: "" },
      { ingredient: garlic, quantity: 3, unit_of_measure: "cloves" },
      { ingredient: chesnut_mushrooms, quantity: 250, unit_of_measure: "g" },
      { ingredient: white_wine, quantity: 125, unit_of_measure: "ml" },
      { ingredient: arborio_rice, quantity: 150, unit_of_measure: "g" },
      { ingredient: miso_paste, quantity: 1, unit_of_measure: "tsp" },
      { ingredient: parmesan, quantity: 50, unit_of_measure: "g" }
    ],
    tags: [
      { name: "European" },
      { name: "Main" }
    ]
  },
  { # Gremolata
    recipe_data: {
      user_id: admin.id,
      name: "Gremolata",
      description: "Elevate simple dishes. Add to meat, fish, and veg dishes to add freshness and depth.",
      instructions: "Finely chop parsley, zest and juice lemon, grate garlic. Add oil.",
      prep_time: 5,
      cook_time: 0,
      meal_type: [],
      included_recipes: [""]
    },
    ingredients: [
      { ingredient: olive_oil, quantity: 1, unit_of_measure: "dash" },
      { ingredient: garlic, quantity: 1, unit_of_measure: "clove" },
      { ingredient: lemons, quantity: 1, unit_of_measure: "" },
      { ingredient: parsley, quantity: 1, unit_of_measure: "handful" },
    ],
    tags: [
      { name: "European" },
      { name: "Component" }
    ]
  },
  { # Fajitas
    recipe_data: {
      user_id: admin.id,
      name: "Fajitas",
      description: "A family favourite. Crowd pleaser. Whatever you want to say about it, it bangs.",
      instructions: "Fry onion, garlic, and peppers. Set Aside. Marinade diced chicken in cajun, salt, olive oil and lemon. Fry until golden.
                     Add chicken to veg. Serve with wraps, sour cream, guacamole, and grated cheese.",
      prep_time: 25,
      cook_time: 20,
      meal_type: [lunch, dinner],
      included_recipes: [""]
    },
    ingredients: [
      { ingredient: chicken_thighs, quantity: 500, unit_of_measure: "g" },
      { ingredient: cajun_seasoning, quantity: 2, unit_of_measure: "tbsp" },
      { ingredient: salt, quantity: 1, unit_of_measure: "pinch" },
      { ingredient: lemons, quantity: 1, unit_of_measure: "" },
      { ingredient: olive_oil, quantity: 50, unit_of_measure: "ml" },
      { ingredient: red_bell_peppers, quantity: 1, unit_of_measure: "" },
      { ingredient: yellow_bell_peppers, quantity: 1, unit_of_measure: "" },
      { ingredient: green_bell_peppers, quantity: 1, unit_of_measure: "" },
      { ingredient: red_onions, quantity: 1, unit_of_measure: "" },
      { ingredient: garlic, quantity: 2, unit_of_measure: "cloves" }
    ],
    tags: [
      { name: "Mexican" },
      { name: "Main" }
    ]
  },
  { # Rosti
    recipe_data: {
      user_id: admin.id,
      name: "Rosti",
      description: "A swiss alpine staple. Their version of the famed hash brown.",
      instructions: "Peel and grate potato. Squeeze out as much water as you can (tea-towel is a good method). Add butter, salt, and pepper. Cook in clarified butter or neutral oil until cripsy.",
      prep_time: 10,
      cook_time: 10,
      meal_type: [breakfast],
      included_recipes: [""]
    },
    ingredients: [
      { ingredient: maris_piper_potatoes, quantity: 500, unit_of_measure: "g" },
      { ingredient: unsalted_butter, quantity: 50, unit_of_measure: "g" },
      { ingredient: salt, quantity: 10, unit_of_measure: "g" },
    ],
    tags: [
      { name: "European" },
      { name: "Component" }
    ]
  },
  { # Hollondaise Sauce
    recipe_data: {
      user_id: admin.id,
      name: "Hollondaise Sauce",
      description: "Rich and creamy emulsion of egg yolks, butter, and lemon juice.",
      instructions: "Whisk egg yolks and vinegar over gently steaming water until pale and frothy. Melt butter and skim off any solids. Make sure butter is just warm to touch, too hot and it will split. Very slow pour in butter to egg mix whilst constantly stirring. Finish with salt and lemon juice to taste.",
      prep_time: 5,
      cook_time: 10,
      meal_type: [],
      included_recipes: [""]
    },
    ingredients: [
      { ingredient: egg_yolks, quantity: 2, unit_of_measure: "" },
      { ingredient: unsalted_butter, quantity: 125, unit_of_measure: "g" },
      { ingredient: white_wine_vinegar, quantity: 0.5, unit_of_measure: "tsp" },
      { ingredient: lemons, quantity: 1, unit_of_measure: "squueze" }
    ],
    tags: [
      { name: "European" },
      { name: "Component" }
    ]
  },
  { # Eggs Benedict
    recipe_data: {
      user_id: admin.id,
      name: "Eggs Benedict",
      description: "A staple served in every trendy breakfast place in the UK.",
      instructions: "Make hollondaise sauce. Toast english muffin. Poach egg for 3 mins in salted boiling water (with vinegar).
                     Top hame with egg and hollondaise and serve.",
      prep_time: 15,
      cook_time: 5,
      meal_type: [breakfast],
      included_recipes: [""]
    },
    ingredients: [
      { ingredient: english_muffin, quantity: 1, unit_of_measure: "" },
      { ingredient: whole_eggs, quantity: 2, unit_of_measure: "" },
      { ingredient: ham, quantity: 2, unit_of_measure: "slices" }
    ],
    tags: [
      { name: "European" }
    ]
  }
]

puts "created recipe hashes"

def create_recipe(recipe, ingredients, tags)
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

  # opened_photo = URI.open(photo)
  # recipe.photo.attach(io: opened_photo, filename: "nes.png", content_type: "image/png")
  recipe.save
end

puts "created create-recipe def"

# Create recipes and their associated ingredients using the helper method
recipes_with_data.each do |recipe|
  recipe_data = recipe[:recipe_data]
  ingredients = recipe[:ingredients]
  tags = recipe[:tags]
  # photo = recipe[:photo]

  new_recipe = Recipe.create!(recipe_data)

  create_recipe(new_recipe, ingredients, tags)
end

puts "finished seeding"
