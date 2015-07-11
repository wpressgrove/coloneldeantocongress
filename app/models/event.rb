class Event < ActiveRecord::Base
  has_paper_trail

  validates :title, presence: true, uniqueness: true, length: {minimum: 5, maximum: 45}
  validates :location, presence: true, length: {minimum: 5, maximum: 40}
  validates :time, presence: true
end