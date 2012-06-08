require 'spec_helper'

describe Landlord do
  it "#can_edit should return false if you are not the landlord of an apartment" do
    landlord = create(:landlord)
    apt = create(:apartment)
    apt.can_edit?(landlord).should be_false
  end
end
