class EventSlug < ActiveRecord::Migration
  def change
    add_column :events, :slug, :string
    add_index :events, :slug

    add_column :pages, :slug, :string
    add_index :pages, :slug
  end
end
