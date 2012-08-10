class Tenant < User
  attr_accessible :type
  attr_accessor :type

  def can_favorite?(apt)
    apt_ids = favorites.map { |fav| fav.apartment_id }
    !apt_ids.include? apt.id
  end

  def dashboard_type
    'tenant'
  end
end
