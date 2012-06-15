class Apartment < ActiveRecord::Base
  attr_accessible :address, :rent, :city, :zip, :landlord_id, :photos_attributes
  belongs_to :landlord, class_name: 'User'
  validates :address, :rent, presence: true
  has_many :favorites
  has_many :photos
  accepts_nested_attributes_for :photos

  def can_edit?(landlord)
    landlord.id == current_user.id
  end
end
