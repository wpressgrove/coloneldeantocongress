class Donations < ActiveRecord::Migration
  def change
    create_table :donations do |t|
      t.string :stripe_token
      t.string :email
      t.integer :amount

      t.timestamps
    end
  end
end
