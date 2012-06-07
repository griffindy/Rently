require "spec_helper"

describe WelcomeController do
  it "responds with success when not signed in" do
    get :index
    response.should be_success
  end

  it "redirects to the landlord's list if a landlord" do
    landlord = create(:landlord)
    sign_in_as(landlord)
    get :index
    response.should redirect_to(landlord_path(landlord.id))
  end

  it "redirects to the tenant's favorites if a tenant" do
    tenant = create(:tenant)
    sign_in_as(tenant)
    get :index
    response.should redirect_to(tenant_path(tenant.id))
  end
end
