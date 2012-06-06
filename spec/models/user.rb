require 'spec_helper'

describe User do
  it "should validate presence of email" do
    user = User.new
    user.valid?.should be_false
  end

  it "should validate presence of role" do
    user = User.new(email: "john@doe.com", password: 'password')
    user.valid?.should be_false
  end
end
