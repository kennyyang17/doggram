class Picture < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :picture_tags
  has_many :tags, through: :picture_tags
  has_one_attached :image
  accepts_nested_attributes_for :tags
  validates :image_url, uniqueness: true
  # has_attached_file :image, styles: { large: "600x600>", medium: "300x300", thumb: "150x150#" }
  # validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  def image=(uploaded_image)
       file_path = Rails.root.join('app', 'assets', 'images',uploaded_image.original_filename )

       File.open(file_path, 'wb') do |file|
           file.write(uploaded_image.read)
       end

       self.image_url = "http://localhost:3000/assets/#{uploaded_image.original_filename}"
   end

end
