class Recipe < ApplicationRecord
  belongs_to :user

  has_many :favourite_recipes, dependent: :destroy
  has_many :favourites, through: :favourite_recipes

  has_many :menu_recipes, dependent: :destroy
  has_many :menus, through: :menu_recipes

  has_many :recipe_ingredients, dependent: :destroy
  has_many :ingredients, through: :recipe_ingredients

  include PgSearch::Model
  pg_search_scope :search_by_recipe,
                  against: [:name],
                  using: {
                    tsearch: { prefix: true }
                  }
end
