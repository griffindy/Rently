class Favorite < ActiveRecord::Base
  attr_accessible :apartment_id

  belongs_to :apartment
  belongs_to :user
end
