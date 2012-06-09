require 'spec_helper'

describe User do
  it "should validate presence of email" do
    user = User.new(password: 'password', role: 'tenant', name: 'John Doe')
    user.valid?.should be_false
  end

  it "should validate presence of role" do
    user = User.new(email: "john@doe.com", password: 'password', name: 'John Doe')
    user.valid?.should be_false
  end

  it "should validate presence of name" do
    user = User.new(email: "john@doe.com", password: 'password', role: 'tenant')
    user.valid?.should be_false
  end

  it "#can_edit should return false if you are not the landlord of an apartment" do
    landlord = create(:landlord)
    apt = create(:apartment)
    landlord.can_edit?(apt).should be_false
  end

  it "#can_favorite? should return false if the tenant has already favorited the apartment" do
    tenant = create(:tenant)
    apt = create(:apartment)
    tenant.favorites.new(apt)
    tenant.can_favorite?(apt).should be_false
  end
end
