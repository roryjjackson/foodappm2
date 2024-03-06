class FavouriteRecipe < ApplicationRecord
  belongs_to :recipe
  belongs_to :favourite
end
