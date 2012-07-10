class Apartment < ActiveRecord::Base
  attr_accessible :address, :rent, :city, :zip, :landlord_id, :photos_attributes, :bedrooms, :bathrooms, :state, :description
  belongs_to :landlord, class_name: 'User'
  validates :address, :rent, presence: true
  has_many :favorites, dependent: :destroy
  has_many :photos, dependent: :destroy
  accepts_nested_attributes_for :photos, allow_destroy: true
end
