class Order < ActiveRecord::Migration
  def change
    rename_column :sidebar_items, :order, :rank
  end
end
