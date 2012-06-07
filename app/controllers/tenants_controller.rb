class TenantsController < ApplicationController
  def show
    @tenant = current_user
  end
end
