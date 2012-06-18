class WelcomeController < ApplicationController
  before_filter :check_for_user

  def index
  end

  private

  def check_for_user
    if signed_in?
      #this is ugly, especially with the s adding on after the type
      redirect_to current_user.becomes(current_user.type.constantize)
    end
  end
end
