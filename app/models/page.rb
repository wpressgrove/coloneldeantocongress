class Page < ActiveRecord::Base
  has_paper_trail

  validates :name, uniqueness: true, presence: true
end