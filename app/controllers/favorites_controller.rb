class FavoritesController < ApplicationController
  def show
    
  end
  def create
    tenant_id = params[:tenant_id]
    apt_id = params[:apt_id]
    Favorite.create(tenant_id: tenant_id, apartment_id: apt_id)
    redirect_to tenant_path(current_user.id)
  end

  def destroy
    Favorite.find(params[:id]).destroy
    redirect_to tenant_path(current_user.id)
  end
end
