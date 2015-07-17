class Page < ActiveRecord::Base
  has_paper_trail

  has_many :sidebar_items

  validates :name, uniqueness: true, presence: true

  before_save :set_slug

  def set_slug
    self.slug = self.name.parameterize
  end
end