class Photo < ActiveRecord::Base
  attr_accessible :photo
  belongs_to :apartment
  has_attached_file :photo
  validates_attachment :photo, presence: true,
    content_type: {content_type: ['image/jpg', 'image/png', 'image/gif']}
end
