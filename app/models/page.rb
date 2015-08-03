class Page < ActiveRecord::Base
  has_paper_trail

  has_many :sidebar_items
  has_many :nav_tabs

  validates :name, uniqueness: true, presence: true

  scope :available_pages, ->(include_id) { joins("LEFT JOIN nav_tabs ON(nav_tabs.page_id = pages.id)").where("nav_tabs.page_id IS NULL OR pages.id = '#{include_id}'").where.not(slug: 'home')}
  before_save :set_slug

  def set_slug
    self.slug = self.name.parameterize
  end
end