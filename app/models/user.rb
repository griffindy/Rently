class User < ActiveRecord::Base
  USER_TYPES = %w(Landlord Tenant).freeze
  include Clearance::User
  attr_accessible :email, :type, :name, :password
  validates :email, :type, :name, presence: true
  has_many :apartments, foreign_key: "landlord_id", dependent: :destroy
  has_many :favorites
  has_many :favorited_apartments, through: :favorites, source: :apartment

  def can_edit?(apartment)
    apartment.landlord_id == id
  end

  def can_favorite?(apartment)
    # favorited_apartment_ids.include?(apartment.id)
    favorites.none? { |favorite| favorite.apartment_id == apartment.id }
  end

  def dashboard_type
    type.downcase
  end
end
