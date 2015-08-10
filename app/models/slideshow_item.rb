class SlideshowItem < ActiveRecord::Base
  belongs_to :page
  belongs_to :image

  validates :page_id, presence: true
  validates :image_id, presence: true
  validates :rank, presence: true, uniqueness: {scope: :page_id}

  default_scope { order("rank ASC") }
end