class Events < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.string :location
      t.datetime :time

      t.timestamps
    end

    add_index :events, :title
    add_index :events, :time
  end
end
