class Ingredient < ApplicationRecord
  require 'pg_search'

  has_many :recipe_ingredients
  has_many :recipes, through: :recipe_ingredients

  has_many :menu_ingredients
  has_many :menus, through: :menu_ingredients

  include PgSearch::Model
  pg_search_scope :search_by_ingredient,
                  against: [:name],
                  using: {
                    tsearch: { prefix: true }
                  }
end
