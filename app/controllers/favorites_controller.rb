class FavoritesController < ApplicationController
  def show

  end

  def create
    # TODO: would be nice to find a way not to have to nest id under apartment
    Favorite.create(user_id: params[:user_id], apartment_id: params[:apartment][:id])
    redirect_to dashboard_path
  end

  def destroy
    Favorite.find(params[:id]).destroy
    redirect_to dashboard_path
  end
end
