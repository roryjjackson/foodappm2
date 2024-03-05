class CreateJoinTableMenuRecipe < ActiveRecord::Migration[7.0]
  def change
    create_join_table :menus, :recipes do |t|
      t.index [:menu_id, :recipe_id]
      t.index [:recipe_id, :menu_id]
    end
  end
end
