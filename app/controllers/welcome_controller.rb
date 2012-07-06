class WelcomeController < ApplicationController
  before_filter :check_for_user

  def index
  end

  private

  def check_for_user
    if signed_in?
      redirect_to current_user
    else
      redirect_to sign_in_path
    end
  end
end
