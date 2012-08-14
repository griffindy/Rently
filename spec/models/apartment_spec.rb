require 'spec_helper'

describe Apartment, 'mass assignment' do
  # %w(address).each do |attribute|
  #   it { should allow_mass_assignment_of(attribute) }
  # end
end

describe Apartment, 'validations' do
  it { should validate_presence_of(:address) }
  it { should validate_presence_of(:rent) }
end

describe Apartment, 'associations' do
  it { should belong_to(:landlord) }
  it { should have_many(:photos).dependent(:destroy) }
  it { should have_many(:favorites) }
  it { should have_many(:favorited_apartments).through(:favorites).dependent(:destroy) }
end

describe Apartment, 'nested attributes' do
  it { should accept_nested_attributes_for(:photos) }
end
