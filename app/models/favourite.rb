class Favourite < ApplicationRecord
  belongs_to :user

  has_many :favourite_recipes, dependent: :destroy
  has_many :recipes, through: :favourite_recipes
end
