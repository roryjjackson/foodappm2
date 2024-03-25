class AddDaysPlannedToMenu < ActiveRecord::Migration[7.0]
  def change
    add_column :menus, :days_planned, :integer
  end
end
