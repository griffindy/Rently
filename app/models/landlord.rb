class Landlord < ActiveRecord::Base
  attr_accessible :name, :email
  has_many :apartments
  validates :name, :email, :presence => true
end

