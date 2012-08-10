require 'spec_helper'

describe Landlord, "#dashboard_type" do
  it 'returns "landlord"' do
    landlord = build_stubbed(:landlord)
    landlord.dashboard_type.should == 'landlord'
  end
end
