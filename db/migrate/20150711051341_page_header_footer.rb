class PageHeaderFooter < ActiveRecord::Migration
  def change
    add_column :pages, :has_header, :boolean, default: true
    add_column :pages, :has_footer, :boolean, default: true
    add_column :pages, :required, :boolean, default: false

    add_index :pages, :required
    add_index :pages, :name
  end
end
