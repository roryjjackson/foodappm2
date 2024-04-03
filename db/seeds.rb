require "open-uri"

Recipe.destroy_all
Ingredient.destroy_all
Tag.destroy_all
Menu.destroy_all
admin = User.create!(email: "test1@test.com", password: "123456")

default_photo = "https://res.cloudinary.com/dfipoufmj/image/upload/v1712164345/pexels-gdtography-911738_k92abl.jpg"

tags = ["Snack",
        "Dessert",
        "Side",
        "Main",
        "Small plate",
        "Bread",
        "Component",
        "Baked Goods"]

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

ingredients = [
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
  { name: "Brioche Bun" }
]

ingredients.each do |ingredient|
  Ingredient.create!(name: ingredient[:name])
end

puts "Created ingredients"

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
      meal_type: ["Lunch"]
    },
    ingredients: [
      { ingredient: ground_beef, quantity: 100, unit_of_measure: "g" },
      { ingredient: unsalted_butter, quantity: 20, unit_of_measure: "g" },
      { ingredient: salt, quantity: 1, unit_of_measure: "pinch" },
      { ingredient: paprika, quantity: 1, unit_of_measure: "pinch" },
      { ingredient: brioche_bun, quantity: 1, unit_of_measure: "unit" },
      { ingredient: burger_sauce, quantity: 25, unit_of_measure: "g" }
    ],
    tags: [
      { name: "Main" }
    ],
    photo: "https://res.cloudinary.com/dfipoufmj/image/upload/v1712159137/pexels-jonathan-borba-2983101_i2amcd.jpg"
  },
  {
    recipe_data: {
      user_id: admin.id,
      name: "Homemade chips",
      description: "Crispy, golden slices of freshly fried potatoes",
      instructions: "Peel, and slice into thick 1.5cm chips. part boil in salty water until just soft (~8mins), drain and allow to steam dry. Fry in oil @120 degrees for 10 mins. To finish, fry @ 180 degrees until golden. Season with salt",
      prep_time: 10,
      cook_time: 30,
      meal_type: ["Lunch"]
    },
    ingredients: [
      { ingredient: maris_piper_potatoes, quantity: 100, unit_of_measure: "g" },
    ],
    tags: [
      { name: "Side" },
      { name: "Component" },
      { name: "Snack" }
    ],
    photo: default_photo
  },
  {
    recipe_data: {
      user_id: admin.id,
      name: "Banana Bread",
      description: "Moist, flavourful recipe, bursting with banana goodness",
      instructions: "Mix dry ingredients together, smash ripe bananas and add other wet ingredients. Combine the two and bake until cooked through @ 170 degrees fan",
      prep_time: 10,
      cook_time: 30,
      meal_type: ["Lunch"]
    },
    ingredients: [
      { ingredient: plain_flour, quantity: 1.75, unit_of_measure: "cup" },
      { ingredient: baking_soda, quantity: 1.5, unit_of_measure: "tsp" },
      { ingredient: salt, quantity: 0.75, unit_of_measure: "pinch" },
      { ingredient: castor_sugar, quantity: 1.5, unit_of_measure: "cup" },
      { ingredient: whole_eggs, quantity: 3, unit_of_measure: "unit" },
      { ingredient: sunflower_oil, quantity: 0.75, unit_of_measure: "cup" },
      { ingredient: bananas, quantity: 1, unit_of_measure: "cup" },
    ],
    tags: [
      { name: "Baked Goods" },
      { name: "Component" },
      { name: "Snack" }
    ],
    photo: default_photo
  },
  {
    recipe_data: {
      user_id: admin.id,
      name: "Chocolate Brownie",
      description: "A decadent, fudgy delight, rich with cocoa",
      instructions: "Whisk eggs with sugar until pale yellow. Melt butter and chocolate and fold into egg mix. Bake at 170 (Longer cooking will result in a more cakey mixture, less cooking will be gooey).",
      prep_time: 10,
      cook_time: 25,
      meal_type: ["Lunch"]
    },
    ingredients: [
      { ingredient: whole_eggs, quantity: 10, unit_of_measure: "unit" },
      { ingredient: castor_sugar, quantity: 600, unit_of_measure: "g" },
      { ingredient: dark_chocolate_70_percent, quantity: 710, unit_of_measure: "g" },
      { ingredient: milk_chocolate, quantity: 200, unit_of_measure: "g" },
      { ingredient: unsalted_butter, quantity: 340, unit_of_measure: "g" },
    ],
    tags: [
      { name: "Baked Goods" },
      { name: "Component" },
      { name: "Snack" }
    ],
    photo: default_photo
  },
  {
    recipe_data: {
      user_id: admin.id,
      name: "Nutty Chocolate Brownie",
      description: "A decadent, fudgy delight, rich with cocoa and studded with melty chocolate chips and nuts.",
      instructions: "Beat eggs and sugar together until pale yellow. Add rest of dry ingredients. Melt chocolate and butter together. Combine two mixes. Fold in chopped chocolate and nuts and pour into lined tin. Bake at 170 degrees until cooked",
      prep_time: 15,
      cook_time: 25,
      meal_type: ["Lunch"]
    },
    ingredients: [
      { ingredient: whole_eggs, quantity: 6, unit_of_measure: "unit" },
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
      { name: "Snack" }
    ],
    photo: default_photo
  },
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
