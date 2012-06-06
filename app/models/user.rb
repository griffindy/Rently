class User < ActiveRecord::Base
  include Clearance::User
  attr_accessible :email, :role, :name, :password
  validates :email, :role, :name, presence: true
end
