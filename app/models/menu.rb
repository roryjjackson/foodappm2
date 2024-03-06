class Menu < ApplicationRecord
  has_and_belongs_to_many :recipes

  accepts_nested_attributes_for :recipes

  has_many :menu_tags, dependent: :destroy
  has_many :tags, through: :menu_tags
end
