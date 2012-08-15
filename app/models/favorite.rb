class Favorite < ActiveRecord::Base
  attr_accessible :apartment_id, :user_id

  belongs_to :apartment
  belongs_to :user

  def to_partial_path
    'favorites/tenant'
  end
end
