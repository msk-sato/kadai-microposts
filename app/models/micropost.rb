class Micropost < ApplicationRecord
  belongs_to :user
  
  validates :content, presence: true, length: { maximum: 255 }
  
  has_many :favorite
  has_many :likes_users, through: :favorite, source: :user

end
