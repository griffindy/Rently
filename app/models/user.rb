class User < ActiveRecord::Base
  include Clearance::User
  attr_accessible :email, :role, :name, :password
  validates :email, :role, :name, presence: true
  has_many :apartments, foreign_key: 'landlord_id', inverse_of: :apartment
  has_many :favorites
end
