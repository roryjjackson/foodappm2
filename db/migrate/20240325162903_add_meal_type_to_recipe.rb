class AddMealTypeToRecipe < ActiveRecord::Migration[7.0]
  def change
    add_column :recipes, :meal_type, :string
  end
end
