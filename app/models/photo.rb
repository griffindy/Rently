class Photo < ActiveRecord::Base
  attr_accessible :photo
  belongs_to :apartment
  has_attached_file :photo
end
