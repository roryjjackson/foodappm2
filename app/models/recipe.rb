class Recipe < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :menus
  has_many :recipe_tags
  has_many :tags, through: :recipe_tags
end
