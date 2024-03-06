class Recipe < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :menus
  has_many :recipe_tags
  has_many :tags, through: :recipe_tags

  has_many :recipe_ingredients, dependent: :destroy
  has_many :ingredients, through: :recipe_ingredients

  has_many :favourite_recipes, dependent: :destroy
  has_many :favourites, through: :favourite_recipes
end
