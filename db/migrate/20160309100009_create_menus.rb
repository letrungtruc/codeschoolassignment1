class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.string :name
      t.text :descriptions
      t.integer :price
      t.string :section
      t.string :img_url

      t.timestamps null: false
    end
  end
end
