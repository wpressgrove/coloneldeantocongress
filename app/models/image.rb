class Image < Medium
  has_attached_file :file, :styles => { large: "1110x765", medium: "730x444", small: "223x170", thumb: "100x100>" }, :default_url => "/images/missing.png"
  validates_attachment_content_type :file, content_type: /\Aimage\/.*\Z/
  validates :file_file_name, presence: true
  validates :file_content_type, presence: true
  validates :file_file_size, presence: true
  validates :file_updated_at, presence: true

  default_scope { order("title ASC") }
end
