class Menu < ApplicationRecord
  serialize :meal_type, Array
  has_one_attached :photo

  has_and_belongs_to_many :recipes

  accepts_nested_attributes_for :recipes

  has_many :menu_tags, dependent: :destroy
  has_many :tags, through: :menu_tags

  has_many :menu_ingredients, dependent: :destroy
  has_many :ingredients, through: :menu_ingredients
end
