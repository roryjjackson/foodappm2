class CreateMenuRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :menu_recipes do |t|
      t.references :menu, null: false, foreign_key: true
      t.references :recipe, null: false, foreign_key: true

      t.timestamps
    end

    add_index :menu_recipes, [:menu_id, :recipe_id]
  end
end
