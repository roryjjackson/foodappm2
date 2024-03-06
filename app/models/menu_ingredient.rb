class MenuIngredient < ApplicationRecord
  belongs_to :menu
  belongs_to :ingredient
end
