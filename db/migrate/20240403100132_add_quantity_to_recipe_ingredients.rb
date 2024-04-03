class AddQuantityToRecipeIngredients < ActiveRecord::Migration[7.0]
  def change
    add_column :recipe_ingredients, :quantity, :float
  end
end
