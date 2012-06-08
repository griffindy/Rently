class FavoritesController < ApplicationController
  def create
    fav = params[:favorite]
    blah
  end

  def destroy
    Favorite.find(params[:id]).destroy
    redirect_to tenant_path(current_user.id)
  end
end
