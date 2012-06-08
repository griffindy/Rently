class Apartment < ActiveRecord::Base
  attr_accessible :address, :rent, :city, :zip, :landlord_id
  belongs_to :landlord, class_name: 'User'
  validates :address, :rent, presence: true
  has_many :favorites

  def can_edit?(landlord)
    landlord.id == current_user.id
  end
end
