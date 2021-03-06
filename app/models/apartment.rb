class Apartment < ActiveRecord::Base
  attr_accessible :address, :rent, :city, :zip, :photos_attributes, :bedrooms, :bathrooms, :state, :description

  validates :address, presence: true
  validates :rent, presence: true

  belongs_to :landlord, class_name: 'User'
  has_many :photos, dependent: :destroy
  has_many :favorites
  has_many :favorited_apartments, through: :favorites, dependent: :destroy

  accepts_nested_attributes_for :photos, allow_destroy: true
end
