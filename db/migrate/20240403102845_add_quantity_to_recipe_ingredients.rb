class AddQuantityToRecipeIngredients < ActiveRecord::Migration[7.0]
  def change
    add_column :recipe_ingredients, :quantity, :float
    add_column :recipe_ingredients, :unit_of_measure, :string
  end
end
