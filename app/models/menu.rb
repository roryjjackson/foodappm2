class Menu < ApplicationRecord
  has_many :menu_recipes, dependent: :destroy
  has_many :recipes, through: :menu_recipes

  has_many :menu_ingredients, dependent: :destroy
  has_many :ingredients, through: :menu_ingredients

  validates :name, presence: true
  validates :description, presence: true
  validates :days_planned, presence: true
end
