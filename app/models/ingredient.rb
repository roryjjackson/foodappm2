class Ingredient < ApplicationRecord
  has_many :recipe_ingredients
  has_many :recipes, through: :recipe_ingredients

  has_many :menu_ingredients
  has_many :menus, through: :menu_ingredients
end
