class Page < ActiveRecord::Base
  has_paper_trail

  validates :name, uniqueness: true, presence: true

  before_save :set_slug

  def set_slug
    self.slug = self.name.parameterize
  end
end