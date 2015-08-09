class Images < ActiveRecord::Migration
  def change
    create_table :media do |t|
      t.string :title
      t.string :type
      t.has_attached_file :file

      t.timestamps
    end

    add_index :media, :title
    add_index :media, :type
  end
end
