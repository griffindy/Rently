class User < ActiveRecord::Base
  include Clearance::User
  attr_accessible :email, :role, :name, :password
  validates :email, :role, :name, presence: true
  has_many :apartments, foreign_key: "landlord_id"
  has_many :favorites, foreign_key: "tenant_id"
end
