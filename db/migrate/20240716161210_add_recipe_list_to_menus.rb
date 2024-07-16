class AddRecipeListToMenus < ActiveRecord::Migration[7.0]
  def change
    add_column :menus, :recipe_list, :string, array: true, default: []
  end
end
