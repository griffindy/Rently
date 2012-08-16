class User < ActiveRecord::Base
  include Clearance::User

  ROLES = %w(Landlord Tenant).freeze

  attr_accessible :email, :role, :name

  validates :role, presence: true
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

  def dashboard
    role.downcase
  end
end
