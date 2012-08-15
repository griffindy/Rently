class User < ActiveRecord::Base
  include Clearance::User

  USER_TYPES = %w(Landlord Tenant).freeze

  attr_accessible :email, :type, :name

  validates :type, presence: true
  validates :name, presence: true

  has_many :apartments, foreign_key: "landlord_id", dependent: :destroy
  has_many :favorites
  has_many :favorited_apartments, through: :favorites, source: :apartment

  def can_edit?(apartment)
    apartment.landlord == self
  end

  def can_favorite?(apartment)
    favorites.where(apartment_id: apartment.id).empty?
  end

  def dashboard_type
    type.downcase
  end
end
