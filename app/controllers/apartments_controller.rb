class ApartmentsController < ApplicationController

  def index
  end

  def new
    @apartment = Apartment.new
  end

  def create
    apartment = params[:apartment]
    apartment["landlord_id"] = current_user.id
    new_apartment = Apartment.create(apartment)
    redirect_to edit_apartment_path(new_apartment.id), notice: "Apartment Created!"
  end

  def show
    @apartment = Apartment.find(params[:id])
  end

  def edit
    @apartment = current_user.apartments.find(params[:id])
  end

  def update
    apartment = Apartment.find(params[:id])
    apartment.update_attributes(params[:apartment])
    redirect_to edit_apartment_path(apartment.id), notice: "Updated!"
  end
end
