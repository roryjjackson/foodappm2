class RenameType < ActiveRecord::Migration[7.0]
  def change
    rename_column :menus, :type, :meal_type
  end
end
