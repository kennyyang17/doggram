class Picture < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :picture_tags
  has_many :tags, through: :picture_tags
  # has_attached_file :image, styles: { large: "600x600>", medium: "300x300", thumb: "150x150#" }
  # validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
