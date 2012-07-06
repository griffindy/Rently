require 'spec_helper'

describe Landlord do
  it "#can_edit should return false if you are not the landlord of an apartment" do
    landlord = create(:landlord)
    apt = create(:apartment)
    current_user = create(:user, name: "Dylan Griffin", type: "Tenant")
    apt.can_edit?(landlord, current_user).should be_false
  end
end
