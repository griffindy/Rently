class Apartment < ActiveRecord::Base
  belongs_to :landlord, class_name: 'User'
  validates :address, :rent, :landlord_id, presence: true
  has_many :favorites
end
