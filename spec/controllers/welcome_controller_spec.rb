require "spec_helper"

describe WelcomeController do

  it "should go to the index if not signed in" do
    get :index
    response.should be_success
  end

  it "redirects to the landlord's list if a landlord" do
    landlord = create(:landlord)
    sign_in_as(landlord)
    get :index
    response.should redirect_to(dashboard_path)
  end

  it "redirects to the tenant's favorites if a tenant" do
    tenant = create(:tenant)
    sign_in_as(tenant)
    get :index
    response.should redirect_to(dashboard_path)
  end
end
