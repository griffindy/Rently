class Landlord < User
  attr_accessible :type
  attr_accessor :type

  def can_edit?(apt)
    apartments.include?(apt)
  end
end

