class User < ActiveRecord::Base
  include Clearance::User
  attr_accessible :email, :role, :name, :password
  validates :email, :role, :name, presence: true
  has_many :apartments, foreign_key: "landlord_id"
  has_many :favorites, foreign_key: "tenant_id"

  def can_edit?(apt)
    apartments.include?(apt)
  end

  def can_favorite?(apt)
    favorites.include?(apt)
  end
end
