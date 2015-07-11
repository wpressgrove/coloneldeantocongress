class Event < ActiveRecord::Base
  has_paper_trail

  validates :title, presence: true, uniqueness: true, length: {minimum: 5, maximum: 45}
  validates :location, presence: true, length: {minimum: 5, maximum: 40}
  validates :time, presence: true

  before_save :set_slug

  scope :next_event, -> (index) { Event.where("time >= ?", Time.now.beginning_of_day).order("time ASC")[index] }

  def set_slug
    self.slug = self.title.parameterize
  end
end