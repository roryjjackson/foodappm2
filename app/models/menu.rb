class Menu < ApplicationRecord
  serialize :meal_type, Array
  # has_one_attached :photo

  has_and_belongs_to_many :recipes

  accepts_nested_attributes_for :recipes

  has_many :menu_tags, dependent: :destroy
  has_many :tags, through: :menu_tags

  has_many :menu_ingredients, dependent: :destroy
  has_many :ingredients, through: :menu_ingredients

  validates :name, presence: true
  validates :meal_type, presence: true
  validates :days_planned, presence: true

  validate :meal_type_presence
  # validate :days_planned_presence

  private

  # def days_planned_presence
  #   erros.add(:days_planned, "")
  # end

  def meal_type_presence
    @errors.add(:meal_type, "Must select at least one meal type") unless meal_type.present?
  end
end
