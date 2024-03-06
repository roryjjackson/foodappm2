class CreateMenuTags < ActiveRecord::Migration[7.0]
  def change
    create_table :menu_tags, id: false do |t|
      t.references :menu, null: false, foreign_key: true
      t.references :tag, null: false, foreign_key: true
    end
  end
end
