module DashboardHelper
  def dashboard_for(user)
    user.class.model_name.downcase
  end
end
