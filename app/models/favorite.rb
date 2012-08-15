class Favorite < ActiveRecord::Base
  attr_accessible :apartment_id
  belongs_to :apartment
  belongs_to :tenant, class_name: 'User'

  def to_partial_path
    'favorites/tenant'
  end
end
