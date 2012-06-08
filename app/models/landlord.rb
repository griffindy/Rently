class Landlord
  def initialize(user)
    @user = user
  end

  def can_edit?(apt)
    current_user.apartments.include?(apt)
  end
end

