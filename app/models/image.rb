class Image < Medium
  has_attached_file :file, :styles => { large: "1110x765", medium: "730x444", small: "223x170", thumb: "100x100>" }, :default_url => "/images/missing.png"
  validates_attachment_content_type :file, content_type: /\Aimage\/.*\Z/
end
