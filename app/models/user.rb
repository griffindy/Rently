class User < ActiveRecord::Base
  include Clearance::User
  attr_accessible :email, :type, :name, :password
  validates :email, :type, :name, presence: true
  has_many :apartments, foreign_key: "landlord_id"
  has_many :favorites, foreign_key: "tenant_id"
  attr_accessor :type

  def can_edit?(apt)
    apartments.include?(apt)
  end

  def can_favorite?(apt)
    favorites.include?(apt)
    false
  end

  def self.select_options
    descendants.map { |user| user.to_s }.sort
  end
end
