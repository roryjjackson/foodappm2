class CreateRecipeTags < ActiveRecord::Migration[7.0]
  def change
    create_table :recipe_tags do |t|
      t.belongs_to :recipe
      t.belongs_to :tag
    end
  end
end
