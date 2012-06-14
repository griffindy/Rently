require 'spec_helper'

describe User do
  it "should validate presence of email" do
    user = User.new(password: 'password', type: 'Tenant', name: 'John Doe')
    user.valid?.should be_false
  end

  it "should validate presence of type" do
    user = User.new(email: "john@doe.com", password: 'password', name: 'John Doe')
    user.valid?.should be_false
  end

  it "should validate presence of name" do
    user = User.new(email: "john@doe.com", password: 'password', type: 'Tenant')
    user.valid?.should be_false
  end

  it "#can_edit should return false if you are not the Landlord of an apartment" do
    Landlord = create(:landlord)
    apt = create(:apartment)
    Landlord.can_edit?(apt).should be_false
  end

  it "#can_favorite? should return false if the Tenant has already favorited the apartment" do
    Tenant = create(:tenant)
    apt = create(:apartment)
    Tenant.favorites.new(apt)
    Tenant.can_favorite?(apt).should be_false
  end
end
