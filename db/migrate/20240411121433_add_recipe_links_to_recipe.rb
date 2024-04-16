class AddRecipeLinksToRecipe < ActiveRecord::Migration[7.0]
  def change
    add_column :recipes, :included_recipes, :string, array: true, default: []
  end
end
