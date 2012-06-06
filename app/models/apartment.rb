class Apartment < ActiveRecord::Base
  belongs_to :landlord, foreign_key: 'landlord_id'
  validates :address, :rent, :landlord_id, presence: true
end
