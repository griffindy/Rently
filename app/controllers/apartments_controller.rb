class ApartmentsController < ApplicationController

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
    @favorite = current_user.favorites.new
  end

  def edit
    @apartment = current_user.apartments.find(params[:id])
  end

  def update
    apartment = Apartment.find(params[:id])
    apartment.update_attributes(params[:apartment])
    redirect_to edit_apartment_path(apartment.id), notice: "Updated!"
  end

  def destroy
    Apartment.find(params[:id]).destroy
    redirect_to landlord_path(current_user.id)
  end
end
