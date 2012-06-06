class ApartmentsController < ApplicationController
  def index
    @apartments = Apartment.all
  end

  def show
    @apartment = Apartment.find(params[:id])
    @landlord = User.find(@apartment.landlord_id)
  end
end
