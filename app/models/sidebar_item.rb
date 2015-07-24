class SidebarItem < ActiveRecord::Base
  belongs_to :page

  validates :page_id, presence: true
  validates :name, presence: true
  validates :body, presence: true
  validates :rank, presence: true, uniqueness: {scope: :page_id}

  default_scope { order("rank ASC") }
end