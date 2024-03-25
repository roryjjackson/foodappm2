class AddTypeToMenu < ActiveRecord::Migration[7.0]
  def change
    add_column :menus, :type, :string
  end
end
