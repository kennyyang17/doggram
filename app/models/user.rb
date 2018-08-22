class User < ApplicationRecord
  has_many :pictures
  has_many :comments, through: :pictures
  validates :username, uniqueness: true
  validates :email, uniqueness: true
  has_secure_password


  def received_comments
    #should return all the comments made
    #on a picture that the user posted
    users_pictures = Picture.all.select {|picture| picture.user == self}
    return users_pictures.map {|user_picture| user_picture.comments}
  end
end
