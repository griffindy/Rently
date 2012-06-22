require 'spec_helper'

describe User do
  it "#can_edit should return false if you are not the Landlord of an apartment" do
    landlord = create(:landlord)
    apt = create(:apartment)
    landlord.can_edit?(apt).should be_false
  end

  it "#can_edit should return true if you are the landlord of an apartment" do
    landlord = create(:landlord)
    apt = landlord.apartments.new(address: '97 walden street', rent: 1600)
    landlord.can_edit?(apt).should be_true
  end

  it "#can_favorite? should return false if the Tenant has already favorited the apartment" do
    tenant = create(:tenant)
    apt = create(:apartment)
    tenant.favorites.new(apartment_id: apt.id)
    tenant.can_favorite?(apt).should be_false
  end

  it "#can_favorite? should return true if the tenant has not favorited the apartment" do
    tenant = create(:tenant)
    apt = create(:apartment)
    tenant.can_favorite?(apt).should be_true
  end
end
