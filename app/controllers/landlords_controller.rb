class LandlordsController < ApplicationController
  def index

  end
  def show
    @landlord = current_user
  end
end
