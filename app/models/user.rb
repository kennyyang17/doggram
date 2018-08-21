class User < ApplicationRecord
  has_many :pictures
  has_many :comments, through: :pictures
  validates :username, uniqueness: true
  validates :email, uniqueness: true
end
