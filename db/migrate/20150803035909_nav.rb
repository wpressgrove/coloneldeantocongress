class Nav < ActiveRecord::Migration
  def change
    create_table :nav_tabs do |t|
      t.integer :page_id
      t.string :label
      t.integer :rank

      t.timestamps
    end

    add_index :nav_tabs, :page_id
    add_index :nav_tabs, :label
    add_index :nav_tabs, :rank
  end
end
