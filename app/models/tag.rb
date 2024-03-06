class Tag < ApplicationRecord
  has_many :recipe_tags
  has_many :recipes, through: :recipe_tags

  has_many :menu_tags
  has_many :menus, through: :menu_tags
end
