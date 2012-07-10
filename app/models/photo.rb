class Photo < ActiveRecord::Base
  attr_accessible :photo
  belongs_to :apartment
  has_attached_file :photo, styles: { thumb: '100x100>' }
  validates_attachment :photo, presence: true,
    content_type: {content_type: ['image/jpeg', 'image/pjpeg', 'image/png', 'image/gif']}
end
