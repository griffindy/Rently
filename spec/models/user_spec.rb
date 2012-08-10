require 'spec_helper'

describe User, 'USER_TYPES' do
  it 'contains only Landlord and Tenant' do
    User::USER_TYPES.should == ['Landlord', 'Tenant']
  end

  it 'is frozen' do
    User::USER_TYPES.should be_frozen
  end
end

describe User, 'mass assignment' do
  it { should allow_mass_assignment_of(:email) }
  it { should allow_mass_assignment_of(:type) }
  it { should allow_mass_assignment_of(:name) }
end

describe User, 'validations' do
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:type) }
  it { should validate_presence_of(:name) }
end

describe User, 'associations' do
  it { should have_many(:apartments).dependent(:destroy) }
  it { should have_many(:favorites) }
  it { should have_many(:favorited_apartments).through(:favorites) }
end

describe User, '#can_edit' do
  it "returns false if the user is not the landlord of the apartment" do
    landlord = build_stubbed(:landlord)
    apartment = build(:apartment)
    landlord.can_edit?(apartment).should be_false
  end

  it "returns true if the user is the landlord of the apartment" do
    landlord = build_stubbed(:landlord)
    apartment = landlord.apartments.new
    landlord.can_edit?(apartment).should be_true
  end
end

describe User, '#can_favorite?' do
  it "returns false if the tenant has already favorited the apartment" do
    tenant = build_stubbed(:tenant)
    apartment = build_stubbed(:apartment)
    favorite = tenant.favorites.new
    favorite.apartment = apartment
    favorite.save!
    tenant.can_favorite?(apartment).should be_false
  end

  it "returns true if the tenant has not favorited the apartment" do
    tenant = build_stubbed(:tenant)
    apartment = build_stubbed(:apartment)
    tenant.can_favorite?(apartment).should be_true
  end
end

describe User, '#dashboard_type' do
  it 'returns "tenant" for a tenant' do
    tenant = build(:tenant)
    tenant.dashboard_type.should == 'tenant'
  end

  it 'returns "landlord" for a landlord' do
    landlord = build(:landlord)
    landlord.dashboard_type.should == 'landlord'
  end
end
