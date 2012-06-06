require 'spec_helper'

describe Landlord do
  it "should validate presence of name" do
    landlord = Landlord.new(email: 'jon@doe.com')
    landlord.valid?.should be_false
  end
end
