class FavoritesController < ApplicationController
  def show
  end

  def create
    current_user.favorites.create(apartment_id: params[:apartment][:id])
    redirect_to dashboard_path
  end

  def destroy
    current_user.favorites.find(params[:id]).destroy
    redirect_to dashboard_path
  end
end
