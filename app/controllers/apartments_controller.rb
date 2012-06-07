class ApartmentsController < ApplicationController
  def index
    @apartments = current_user.apartments
  end

  def show
    @apartment = Apartment.find(params[:id])
  end
end
