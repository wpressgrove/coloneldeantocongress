class Medium < ActiveRecord::Base
  validates :title, presence: true, uniqueness: true
  validates :file_file_name, presence: true
  validates :file_content_type, presence: true
  validates :file_file_size, presence: true
  validates :file_updated_at, presence: true

  default_scope { order("title ASC") }
end