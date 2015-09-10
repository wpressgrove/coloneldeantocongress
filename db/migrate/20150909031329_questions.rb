class Questions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :city
      t.string :state
      t.string :zip
      t.text :subject
      t.text :description

      t.timestamps
    end

    add_index :questions, :name
    add_index :questions, :email
    add_index :questions, :state
  end
end
