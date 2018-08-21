class Tag < ApplicationRecord
  has_many :picture_tags
  has_many :pictures, through: :picture_tags


  def self.most_popular
    x = Tag.all.map do |tag|
      tag.pictures.length
    end
    x.sort_by {|tag| tag}.reverse
    puts "#{x[0]}, #{x[1]}, #{x[2]}"
  end


end
