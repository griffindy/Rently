require 'spec_helper'

describe Apartment do
  it "#can_edit should return false if you are not the landlord of an apartment" do
    landlord = create(:landlord)
    current_user = create(:landlord)
    apt = create(:apartment)
    apt.can_edit?(landlord, current_user).should be_false
  end

  it "#can_edit should return true if you are the landlord of an apartment" do
    landlord = current_user = create(:landlord)
    apt = landlord.apartments.new
    apt.can_edit?(landlord, current_user).should be_true
  end
end
