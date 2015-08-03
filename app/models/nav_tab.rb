class NavTab < ActiveRecord::Base
  belongs_to :page

  validates :label, presence: true, uniqueness: true
  validates :page_id, presence: true, uniqueness: true
  validates :rank, presence: true, uniqueness: true

  default_scope { order("rank ASC") }
end