class User < ActiveRecord::Base
  include Clearance::User
  attr_accessible :email, :role, :password
  validates :email, :role, presence: true
end
