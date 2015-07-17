class PageSidebarItem < ActiveRecord::Migration
  def change
    create_table :sidebar_items do |t|
      t.integer :page_id
      t.integer :order
      t.string :name
      t.text :body

      t.timestamps
    end
  end
end
