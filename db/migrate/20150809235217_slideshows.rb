class Slideshows < ActiveRecord::Migration
  def change
    create_table :slideshow_items do |t|
      t.integer :page_id
      t.integer :image_id
      t.integer :rank
      t.string :subtitle

      t.timestamps
    end

    add_index :slideshow_items, :page_id
    add_index :slideshow_items, :image_id
    add_index :slideshow_items, :rank
  end
end
