require 'spec_helper'

describe Tenant, "#dashboard_type" do
  it 'returns "tenant"' do
    tenant = build_stubbed(:tenant)
    tenant.dashboard_type.should == 'tenant'
  end
end
