class Guest
  def can_edit?(apartment)
    false
  end

  def can_favorite?(apartment)
    true
  end

  def role
    'Guest'
  end
end
